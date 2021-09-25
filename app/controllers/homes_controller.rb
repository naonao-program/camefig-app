class HomesController < ApplicationController
  def top
    @photos = Photo.all
  end

  def upload
    @photo = Photo.new
    @movie = Movie.new
  end
end