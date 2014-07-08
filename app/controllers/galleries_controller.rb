class GalleriesController < ApplicationController

  before_action :require_login
 

  
  def index
    @galleries = Gallery.all
  end

  def new
    @gallery = Gallery.new
  end

  def create
   params_with_user_id = gallery_params.merge( 
     user_id: current_user.id
    )
    @gallery = Gallery.new(params_with_user_id)
    if @gallery.save
      redirect_to galleries_path
    else
      render :new
    end
  end

  def show
    @gallery = Gallery.find(params[:id])
    @images = @gallery.images
  end

  def destroy
    gallery = Gallery.find(params[:id])
    gallery.destroy
    redirect_to galleries_path
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def update
    @gallery = Gallery.find(params[:id])
    if @gallery.update(gallery_params)
      redirect_to @gallery
    else
      render :edit
    end
  end

  private

  def gallery_params
    params.require(:gallery).permit(:name, :description)
  end

end
