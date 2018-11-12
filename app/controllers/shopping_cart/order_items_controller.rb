require_dependency "shopping_cart/application_controller"

module ShoppingCart
  class OrderItemsController < ApplicationController
    respond_to :js

    DEFAULT_QUANTITY = 1

    before_action :set_item, except: :create

    def create
      @item_presenter = OrderItemPresenter.new(presenter_params)
      NewOrderItemService.call(product_id: @item_presenter.product_id, quantity: @item_presenter.quantity, cart: @cart) do
        on(:ok) { respond_with @item_presenter }
        on(:invalid) do
          redirect_back(fallback_location: cart_path(session[:cart_id]), flash: { danger: t('danger.not_saved')})
        end
      end
    end

    def destroy
      @order_item.destroy
      decorate_items
      respond_with @order_item
    end

    def decrement
      @order_item.decrement(:quantity)
      OrderItemUpdateService.call(@order_item) do
        on(:ok) do |item|
          decorate_items
          respond_with item
        end
      end
    end

    def increment
      @order_item.increment(:quantity)
      OrderItemUpdateService.call(@order_item) do
        on(:ok) do |item|
          decorate_items
          respond_with item
        end
      end
    end

    private

    def set_item
      @order_item = OrderItem.find(params[:id]).decorate
    end

    def decorate_items
      @order_items = @cart.order_items.includes(image_attachment: :blob).order(:created_at).decorate
    end

    def presenter_params
      { product_id: params[:product_id], item_params: params[:order_item] }
    end
  end
end
