class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new params.require(:image).permit(:photo)
    if @image.save
      redirect_to root_path
    else
      render :new
    end
  end
end
