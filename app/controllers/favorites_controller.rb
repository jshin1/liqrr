class FavoritesController < ApplicationController

  before_action :find_favorite, only: [:show]

  def index
    @favorites = Favorite.all
  end

  def show
  end

  def new
    @favorite = Favorite.new
  end

  def create
    byebug
    @favorite = Favorite.create(favorite_params)

    redirect_to favorites_path
  end

  def update
    byebug
    session[:recipe_id] = params[:recipe_id]
    flash[:message] = "You've successfully added this !"
    redirect_to recipes_path
  end

  private

  def find_favorite
    @favorite = Favorite.find(params[:id])
  end

  def favorite_params
    params.require(:favorite).permit(:user_id, :recipe_id)
  end
end
