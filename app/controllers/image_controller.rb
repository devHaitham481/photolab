class ImageController < ApplicationController
  def index
    @images = Image.all
    render json: @images
  end
  
  def show
    @image = Image.find(params[:id])
    render json: @image
    
  end
  

  def create
    @image = Image.create(
     title: params[:title],
     image_url: params[:image_url]
    )
  end
  

  def destroy  
    @images = Image.all
    @image = Image.find(params[id])
    @image.destroy
    render json: @images
    
  end
end
