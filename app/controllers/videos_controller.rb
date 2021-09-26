class VideosController < ApplicationController

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to video_path(@video), notice: "投稿が完了しました。"
    else
      @photo = Photo.new
      render 'homes/upload'
    end
  end

  private
  def video_params
    params.require(:video).permit(:video, :tips, :month, :fps, :youtube_url, :camera_name, :lens_name, :accessories).merge(user_id: current_user.id, month: params[:video][:month].to_i)
  end
end
