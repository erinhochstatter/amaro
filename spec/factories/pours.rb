FactoryBot.define do
  factory :pour do
    association :recipe
    prepared_at { 2.days.ago }
    location { Faker::Nation.capital_city }
  end
end
