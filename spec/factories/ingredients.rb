FactoryBot.define do
  factory :ingredient do
    name { Faker::Food.ingredient }
    description { Faker::Food.ingredient }
  end
end
