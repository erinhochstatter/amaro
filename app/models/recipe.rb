class Recipe < ApplicationRecord
  has_many :ingredient_recipes, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :mixologist, presence: true
end
