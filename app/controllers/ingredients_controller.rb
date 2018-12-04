class IngredientsController < ApplicationController

  before_action :find_ingredient, only: [:show, :edit, :update, :destroy]

  def index
    @ingredients = Ingredient.all
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)

    if @ingredient.valid?
      redirect_to @ingredient
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def find_recipe
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :alcoholic, :mixer, :description)
  end

end
