require 'rails_helper'

module ShoppingCart
  RSpec.describe NewOrderItemService do
    let(:product) { create(:product) }
    let(:cart) { create(:cart) }

    it 'gets three latest products' do
      saved = NewOrderItemService.call(product_id: product.id, quantity: 3, cart: cart)
      expect(saved).to eql(ok: [])
      expect(OrderItem.all.last.product_name).to eql(product.title)
      expect(OrderItem.all.last.quantity).to eql 3
    end
  end
end
