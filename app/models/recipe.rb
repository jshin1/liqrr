class Recipe < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  def self.search(search)
    if search
      results = self.select do |recipe|
        recipe.instructions.include?(search) || recipe.name.include?(search.titlecase) || recipe.ingredients.any? {|ing| ing.name.downcase.include?(search.downcase)}
      end
    else
      self.all
    end
  end

  def recommendations
    matches = Recipe.all.select do |recipe|
      recipe.ingredients.first == self.ingredients.first &&
      recipe.ingredients.second == self.ingredients.second
    end
   matches.delete_if{|r|r.name == self.name}
  end
end
