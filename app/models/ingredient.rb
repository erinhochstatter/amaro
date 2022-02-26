class Ingredient < ApplicationRecord
  has_many :ingredient_recipes, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
end
