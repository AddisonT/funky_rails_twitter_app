class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @funks = @user.funks
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to users_path
  end

  def destroy
    User.find(params[:id]).destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :handle)
  end

end