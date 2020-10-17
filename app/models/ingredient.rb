class Ingredient < ApplicationRecord
  has_one :recipe, dependent: :destroy
  has_many :ingredient_recipes, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
end
