module ShoppingCart
  module DeliveryValidations
    extend ActiveSupport::Concern

    included do
      validates :name, :duration, presence: true
      validates :price, numericality: { greater_than_or_equal_to: 0 }
      validates :name, :duration, length: { maximum: 80 }
    end
  end
end
