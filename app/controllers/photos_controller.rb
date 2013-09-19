class PhotosController < ApplicationController

  def show
    Gravatar.new(user.email)
  end

  private

  def user
    User.find(params[:user_id])
  end

end