class HomeController < ApplicationController
  def overview
    @topics = Topic.includes(:user).recent
    @statuses = Status.includes(:user).recent
  end
end
