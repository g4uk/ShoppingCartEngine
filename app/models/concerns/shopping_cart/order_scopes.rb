module ShoppingCart
  module OrderScopes
    extend ActiveSupport::Concern

    included do
      scope :in_progress, -> { where(status: %w[in_queue payment]).order('created_at desc') }
      scope :in_delivery, -> { where(status: :in_delivery).order('created_at desc') }
      scope :delivered, -> { where(status: :delivered).order('created_at desc') }
      scope :canceled, -> { where(status: :canceled).order('created_at desc') }
      scope :paid, -> { where(status: %w[payment in_queue in_delivery delivered canceled]) }
      scope :not_paid, -> { where(status: %w[created address shipping in_progress]).order('created_at desc') }
      scope :sorted_not_paid, -> { not_paid.order('created_at desc') }
      scope :sorted_paid, -> { paid.order('created_at desc') }

      validates :total, numericality: { greater_than_or_equal_to: 0.01 }
    end
  end
end
