class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  validates_presence_of :name, :cost

  def self.ingredients_sorted
    all.order(:name)
  end
end