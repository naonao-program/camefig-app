class VideosController < ApplicationController
  def create
    def create
      @video = Video.new(video_params)
    end
  
    private
    def video_params
      params.require(:video).permit(:youtube_url, :month, :fps, :tips, :camera_name, :lens_name, :accessories).merge(user_id: current_user.id, month:[:video][:month].to_i)
    end
  end
end
