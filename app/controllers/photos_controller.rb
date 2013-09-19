class PhotosController < ApplicationController

  def index
    @photo = Gravatar.new('stoecki@der-ball-ist-rund.net')
  end

  private

  def user
    User.find(params[:user_id])
  end

end