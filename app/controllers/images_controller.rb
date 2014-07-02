class ImagesController < ApplicationController
  def show
    @image = Image.find(params[:id])
  end

  def new
    @gallery = Gallery.find(params[:gallery_id])
    @image = Image.new
  end

  def create
    image = Image.new(image_params)
    image.gallery_id = params[:gallery_id]
    image.save

    redirect_to gallery_path(image.gallery)
  end

  def destroy
    image = Image.find(params[:id])
    gallery = image.gallery
    image.destroy

    redirect_to gallery_path(gallery)
  end

  private

  def image_params
    params.require(:image).permit(:name, :description, :url)
  end
end
