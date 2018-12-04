class IngredientsController < ApplicationController

  before_action :find_ingredient, only: [:show]

  def index
    @ingredients = Ingredient.all
  end

  def show
  end

  private

  def find_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

end
