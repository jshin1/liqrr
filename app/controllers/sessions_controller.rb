class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      login_user(@user)
      flash[:notice] = "Login successful! Welcome #{@user.username}"
      redirect_to user_path(@user)
    else
      flash[:notice] = 'Invalid username and/or password!'
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = 'Logout successful'
    redirect_to login_path
  end
end
