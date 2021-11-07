class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to photo_path(@photo), notice: "投稿が完了しました。"
    else
      @video = Post.new
      render 'homes/upload'
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  private
  def photo_params
    params.require(:photo).permit(:genre,:f_number,:shutter_speed,:iso,:month,:time,:camera_name,:lens_name,:accessories,:image).merge(user_id: current_user.id, month: params[:photo][:month].to_i, time: params[:photo][:time].to_i)
  end
end
