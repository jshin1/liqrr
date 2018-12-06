class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  has_many :user_ingredients
  has_many :users, through: :user_ingredients

  def add_to_cabinet
    @user = current_user
    @user.ingredients << self
  end
end
