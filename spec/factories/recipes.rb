FactoryBot.define do
  factory :recipe do
    title { "#{Faker::Dessert.flavor} #{Faker::Team.creature}" }
    mixologist { Faker::Restaurant.name }
    original_url { Faker::Internet.url }
    description { Faker::Food.description }

    factory :recipe_with_ingredient_recipes do
      transient do
        ingredient_count { 5 }
      end

      after(:create) do |recipe, evaluator|
        create_list(:ingredient_recipe, evaluator.ingredient_count, recipe: recipe)

        recipe.reload
      end
    end
  end
end
