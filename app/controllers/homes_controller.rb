class HomesController < ApplicationController
  def top
    @photos = Photo.all
    @videos = Video.all
  end

  def upload
    @photo = Photo.new
    @video = Video.new
  end
end