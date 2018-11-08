FactoryBot.define do
  factory :book do
    title { FFaker::Lorem.sentence }
    price { rand(10.1..100).round(2) }
    description { FFaker::Book.description }
    category
    publishing_year { Date.today.year }
    dimensions { FFaker::Lorem.words }
    materials { FFaker::Lorem.words }
  end
end
