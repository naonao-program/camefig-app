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
    respond_to do |format|
      format.html
      # link_toメソッドをremote: trueに設定したのでリクエストはjs形式で行われる（詳しくは参照記事をご覧ください）
      format.js
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:genre,:f_number,:shutter_speed,:iso,:month,:time,:tips,:hashtag,:address,:camera_name,:lens_name,:accessories,:image).merge(user_id: current_user.id, month: params[:photo][:month].to_i, time: params[:photo][:time].to_i)
  end
end
