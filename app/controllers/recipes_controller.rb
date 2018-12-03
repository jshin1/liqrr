class RecipesController < ApplicationController

  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)

    if @recipe.valid?
      redirect_to @recipe
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
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :occasion, :i1, :m1, :i2, :m2, :i3, :m3, :i4, :m4, :i5, :m5, :i6, :m6, :i7, :m7, :i8, :m8, :i9, :m9, :i10, :m10,)
  end

end
