module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # First describe the field signature:
    field :pour, PourType, null: true do
      description "Find a pour by ID"
      argument :id, ID, required: true
    end

    field :scoop, ScoopType, null: true do
      description "Find a scoop by ID"
      argument :id, ID, required: true
    end

    field :recipe, RecipeType, null: true do
      description "Find a recipe by ID"
      argument :id, ID, required: true
    end

    field :ingredient_recipe, IngredientRecipeType, null: true do
      description "Find an ingredient for a recipe by ID"
      argument :id, ID, required: true
    end

    field :pours, [Types::PourType], "All the pours", null: false
    field :scoops, [Types::ScoopType], "All the scoops", null: false
    field :recipes, [Types::RecipeType], "All the recipes", null: false
    field :ingredient_recipes, [Types::IngredientRecipeType], "All the ingredient_recipes", null: false

    def pour(id:)
      Pour.find(id)
    end

    def pours
      Pour.all
    end

    def scoop(id:)
      Scoop.find(id)
    end

    def scoops
      Scoop.all
    end

    def recipe(id:)
      Recipe.find(id)
    end

    def recipes
      Recipe.all
    end

    def ingredient_recipe(id:)
      IngredientRecipe.find(id)
    end

    def ingredient_recipes
      IngredientRecipe.all
    end
  end
end
