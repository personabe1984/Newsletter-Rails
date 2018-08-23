class MagazinesController < ApplicationController
  def index
    @magazines = Magazine.all
  end

  def show
    @magazine = Magazine.find(params[:id])
  end

  #upon creation i only want name and category
  # not sure who will be the subscribers
  def new
    @magazine = Magazine.new
  end

  def create
    @magazine = Magazine.new(magazine_params)
    if @magazine.save
      redirect_to magazine_path(@magazine)
    else
      render :new
    end
  end

  private

  def magazine_params
    params.require(:magazine).permit(:name, :category)
  end


end
