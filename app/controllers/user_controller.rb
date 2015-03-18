class UserController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    redirect_to user_path
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path, notice: 'Poof! Gone!'
  end

end
