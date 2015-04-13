class UserController < ApplicationController
  before_action :ensure_admin
  before_action :lookup_user

  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    redirect_to users_path
  end

  def edit
    @user = User.find(params[:id])
    redirect_to new_user_path
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to user_path, notice: 'Poof! Gone!'
  end

private

def user_params
  params.require(:user).permit(:name, :email, :password_confirmation)
end

def lookup_user
  @user = User.find(params[:id])
end  

def redirect_after_success(notice = all)

end
