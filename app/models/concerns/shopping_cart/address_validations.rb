# frozen_string_literal: true

module ShoppingCart
  module AddressValidations
    extend ActiveSupport::Concern

    NAME = /\A[a-zA-Z\s]+\Z/
    ADDRESS = /\A[a-zA-Z0-9,\-\s]+\Z/
    ZIP = /\A[0-9-]{1,10}\Z/
    PHONE = /\A\+[0-9\s]{1,15}\Z/

    included do
      validates :first_name, :last_name, :address, :country, :city, :zip, :phone, presence: true
      validates :first_name, :last_name, :address, :country, :city, length: { maximum: 50 }
      validates :zip, length: { maximum: 10 }
      validates :phone, length: { maximum: 15 }
      validates :first_name, :last_name, :country, :city, format: { with: NAME }
      validates :address, format: { with: ADDRESS }
      validates :zip, format: { with: ZIP }
      validates :phone, format: { with: PHONE }
    end
  end
end
