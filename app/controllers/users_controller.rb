class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @photos = @user.photos.order(id: "DESC")
  end
end
