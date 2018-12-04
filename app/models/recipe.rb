class Recipe < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  def self.search(search)
    if search
      results = self.select do |recipe|
        recipe.instructions.include?(search) || recipe.name.include?(search.titlecase)
      end
    else
      self.all
    end
  end
end
