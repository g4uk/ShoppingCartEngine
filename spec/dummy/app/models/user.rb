class User < ApplicationRecord
  devise :database_authenticatable, :registerable

  has_many :orders, class_name: 'ShoppingCart::Order',
                    dependent: :nullify,
                    foreign_key: :user_id
  has_one :billing_address, class_name: 'ShoppingCart::BillingAddress',
                            dependent: :destroy,
                            foreign_key: :user_id
  has_one :shipping_address, class_name: 'ShoppingCart::ShippingAddress',
                             dependent: :destroy,
                             foreign_key: :user_id
end
