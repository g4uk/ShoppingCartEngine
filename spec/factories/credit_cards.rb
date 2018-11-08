FactoryBot.define do
  factory :credit_card do
    number { FFaker::String.from_regexp(ShoppingCart::CreditCardValidations::CREDIT_CARD_NUMBER) }
    order
  end
end
