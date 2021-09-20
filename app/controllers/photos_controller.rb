class PhotosController < ApplicationController
  def new
  end
  def show
    @photo = Photo.find(params[:id])
  end
end
