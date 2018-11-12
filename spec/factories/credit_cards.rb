FactoryBot.define do
  factory :credit_card, class: 'ShoppingCart::CreditCard' do
    number { FFaker::String.from_regexp(ShoppingCart::CreditCardValidations::CREDIT_CARD_NUMBER) }
    order
  end
end
