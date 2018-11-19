class Book < ApplicationRecord
  has_many :order_items, class_name: 'ShoppingCart::OrderItem'
  has_many :images, dependent: :destroy
end
