FactoryBot.define do
  factory :address do
    first_name { FFaker::String.from_regexp(ShoppingCart::AddressValidations::NAME) }
    last_name { FFaker::String.from_regexp(ShoppingCart::AddressValidations::NAME) }
    address { FFaker::String.from_regexp(ShoppingCart::AddressValidations::ADDRESS) }
    country { FFaker::String.from_regexp(ShoppingCart::AddressValidations::NAME) }
    city { FFaker::String.from_regexp(ShoppingCart::AddressValidations::NAME) }
    zip { FFaker::String.from_regexp(ShoppingCart::AddressValidations::ZIP) }
    phone { FFaker::PhoneNumber.phone_calling_code }

    factory :billing_address, class: 'BillingAddress' do
    end

    factory :shipping_address, class: 'ShippingAddress' do
    end
  end
end
