# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

puts "Creating ingredients that are also recipes"
complex_ingredients = FactoryBot.create_list(:ingredient, 2)

complex_ingredients.each do |ingredient|
  FactoryBot.create(:recipe, ingredient: ingredient)
end

puts "Making recipes..."
recipes = FactoryBot.create_list(:recipe_with_ingredient_recipes, 5)

puts "Adding linking up ingredients that are recipes"
recipes.each do |recipe|
  FactoryBot.create(:ingredient_recipe, recipe: recipe, ingredient: complex_ingredients.sample)

  puts "Mixing up some pours"
  FactoryBot.create(:pour, recipe: recipe)
end

