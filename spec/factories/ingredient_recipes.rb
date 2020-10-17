FactoryBot.define do
  factory :ingredient_recipe do
    recipe
    ingredient
    unit
    quantity { rand(0.5..10) }
    description { Faker::Restaurant.type }
  end
end
