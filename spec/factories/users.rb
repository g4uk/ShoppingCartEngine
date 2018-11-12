FactoryBot.define do
  factory :user do
    email { FFaker::Internet.email }
    password { 'Borabora11' }
    password_confirmation { password }
  end
end
