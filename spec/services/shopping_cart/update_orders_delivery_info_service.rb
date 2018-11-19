require 'rails_helper'

module ShoppingCart
  RSpec.describe UpdateOrdersDeliveryInfoService do
    let(:order) { create(:order) }
    let(:delivery) { create(:delivery) }
    let(:order_params) { attributes_for(:order) }

    before do
      order_params[:delivery_id] = delivery.id
      allow(Delivery).to receive(:find).and_return delivery
    end

    it 'updates orders delivery info' do
      UpdateOrdersDeliveryInfoService.new(order: order, order_params: order_params).call
      expect(order.delivery_type).to eql(delivery.name)
    end

    context 'order may not fill delivery' do
      it 'does not change orders status' do
        UpdateOrdersDeliveryInfoService.new(order: order, order_params: order_params).call
        expect(order.in_progress?).to eql false
      end
    end

    context 'order may fill delivery' do
      it 'changes orders status to in_progress' do
        order.status = 'shipping'
        UpdateOrdersDeliveryInfoService.new(order: order, order_params: order_params).call
        expect(order.in_progress?).to eql true
      end
    end
  end
end
