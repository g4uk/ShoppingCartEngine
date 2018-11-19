module ShoppingCart
  class NewOrderItemService < Rectify::Command
    DEFAULT_QUANTITY = 1

    def initialize(product_id:, quantity: DEFAULT_QUANTITY, cart:)
      @product = ShoppingCart.product_class.find(product_id)
      @quantity = quantity
      @cart = cart
      @current_item = cart.order_items.find_by(product_id: product_id)
    end

    def call
      if @current_item
        calculate_quantity
      else
        create_item
      end
      return broadcast(:ok) if @current_item.save
      broadcast(:invalid)
    end

    private

    def create_item
      @current_item = @cart.order_items.new(product_id: @product.id, product_name: @product.title,
                                            product_price: @product.price, total: @product.price, 
                                            quantity: @quantity)
      @current_item.image.attach(@product.images.first.photo.blob) if @product.images.present?
    end

    def calculate_quantity
      @current_item.quantity += @quantity.to_i
      @current_item.total = @current_item.product_price * @current_item.quantity
    end
  end
end
