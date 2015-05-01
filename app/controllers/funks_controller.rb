class FunksController < ApplicationController

  def index
    @funks = Funk.all
  end

  def show
    @funk = Funk.find(params[:id])
  end

  def new
    @funk = Funk.new
  end

  def create
    @funk = Funk.create(funk_params)
    redirect_to funks_path
  end

  def destroy
    Funk.find(params[:id]).destroy
  end

  private
  def funk_params
    params.require(:funk).permit(:content)
  end

end
