class HomesController < ApplicationController
  def top
    @photos = Photo.all
    @videos = Post.all
  end

  def upload
    @photo = Photo.new
    @video = Post.new
  end
end