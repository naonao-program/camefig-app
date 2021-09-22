class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
  end

  def show
    @photo = Photo.find(params[:id])
  end

  private
  def photo_params
    params.require(:photo).permit(:genre,:f_number,:shutter_speed,:iso,:month,:time,:camera_name,:lens_name,:accessories,:image).merge(user_id: current_user.id)
  end
end
