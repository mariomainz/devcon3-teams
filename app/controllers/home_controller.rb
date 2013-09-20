class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def overview
    @topics = Topic.includes(:user).recent
    @statuses = Status.includes(:user).recent
  end
end
