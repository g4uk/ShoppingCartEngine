module ShoppingCart
  class Order < ApplicationRecord
    include ShoppingCart::OrdersStateMachineSettings
    include ShoppingCart::OrderScopes

    attr_accessor :billing_flag

    belongs_to :user, class_name: ShoppingCart.user_class.to_s, optional: true
    belongs_to :delivery, optional: true

    enum status: { created: 0, address: 1, shipping: 2, in_progress: 3,
                   payment: 4, in_queue: 5, in_delivery: 6, delivered: 7, canceled: 8 }

    has_many :order_items, as: :itemable, dependent: :destroy
    has_one :billing_address, dependent: :destroy
    has_one :shipping_address, dependent: :destroy, required: false
    has_one :credit_card, dependent: :destroy

    accepts_nested_attributes_for :shipping_address, update_only: true
    accepts_nested_attributes_for :billing_address, update_only: true
    accepts_nested_attributes_for :credit_card, update_only: true
  end
end
