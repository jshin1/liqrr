class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy, :what_can_i_make]

  def index
  end

  def show
    @ingredients = @user.ingredients
    @favorites = @user.recipes
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.valid?
      redirect_to login_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
  end

  def what_can_i_make
    @recipes = @user.what_can_i_make
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password, :birthdate)
  end

end
