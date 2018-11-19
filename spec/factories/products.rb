FactoryBot.define do
  factory :product, class: 'Book' do
    title { FFaker::Lorem.sentence }
    price { rand(10.1..100).round(2) }
    description { FFaker::Book.description }
  end
end
