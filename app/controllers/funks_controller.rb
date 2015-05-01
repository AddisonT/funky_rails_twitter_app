class FunksController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @funks = @user.funks
  end

  def show
    @user = User.find(params[:user_id])
    @funk = Funk.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @funk = Funk.new
  end

  def create
    @user = User.find(params[:user_id])
    @funk = @user.funks.create(funk_params)
    redirect_to user_funks_path
  end

  def destroy
    @user = User.find(params[:user_id])
    Funk.find(params[:id]).destroy
  end

  private
  def funk_params
    params.require(:funk).permit(:content)
  end

end
