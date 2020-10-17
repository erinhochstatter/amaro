class Recipe < ApplicationRecord
  belongs_to :ingredient, required: false
  has_many :ingredient_recipes

  validates :title, presence: true
  validates :description, presence: true
  validates :mixologist, presence: true
end
