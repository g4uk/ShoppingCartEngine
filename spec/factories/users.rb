FactoryBot.define do
  factory :user do
    email { FFaker::Internet.email }
    password { 'Borabora11' }
    password_confirmation { password }

    after(:create) do |user|
      create(:billing_address, addressable: user)
      create(:shipping_address, addressable: user)
    end
  end
end
