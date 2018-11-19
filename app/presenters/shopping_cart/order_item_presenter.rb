module ShoppingCart
  class OrderItemPresenter
    DEFAULT_QUANTITY = 1

    attr_reader :product_id, :quantity

    def initialize(product_id:, item_params:)
      @product_id = product_id ? product_id : item_params[:product_id]
      @quantity = item_params ? item_params[:quantity] : DEFAULT_QUANTITY
    end
  end
end
