FactoryBot.define do
  factory :ingredient_recipe do
    recipe
    ingredient
    unit
    quantity { "%.2f" % rand(0.5..10) }
    description { Faker::Coffee.notes }
  end
end
