# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
File.open('db/fixtures/recipes.json', "r") do |f|
  recipes_json = JSON.parse(f.read)
  recipes_json.each do |recipe|

    puts(recipe["title"])

    recipe_model = Recipe.create!(title: recipe["title"], mixologist: recipe["mixologist"], description: recipe["description"], original_url: recipe["url"], publication: "Imbibe Magazine", equipment: recipe["equipment"], glass: recipe["serving"], garnish: recipe["garnish"])

    recipe["ingredients"]&.each do |item|
      ingredient = Ingredient.find_or_create_by!(name: item["name"], description: item["description"])
      unit = Unit.find_or_create_by!(name: item["unit"])
      IngredientRecipe.create!(recipe_id: recipe_model.id, ingredient_id: ingredient.id, unit: unit, quantity: item["amount"])
    end

    if recipe["made_at"].present?
      pour = Pour.create!(location: recipe["made_at"], prepared_at: recipe["date"].to_date, recipe: recipe_model)
      if recipe["images"].present?
        recipe["images"]&.each do |img|
          pour.photos.attach(io: File.open(Rails.root.join("db/fixtures").join(img)), filename: img)
        end
      end
    end

  end
end

