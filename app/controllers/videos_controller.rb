class VideosController < ApplicationController
  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to video_path(@video), notice: "投稿が完了しました"
    else
      @photo = Photo.new
      render 'homes/upload'
    end
  end

  def show
    @video = Video.find(params[:id])
  end
  
  private
  def video_params
    params.require(:video).permit(:youtube_url, :month, :fps, :tips, :camera_name, :lens_name, :accessories).merge(user_id: current_user.id, month: params[:video][:month].to_i)
  end
end