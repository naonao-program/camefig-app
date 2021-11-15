class HomesController < ApplicationController
  def top
    @photos = Photo.all.order(id: "DESC")
    @videos = Post.all.order(id: "DESC")
  end

  def upload
    @photo = Photo.new
    @video = Post.new
  end
end