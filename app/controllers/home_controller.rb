class HomeController < ApplicationController
  def overview
    @topics = Topic.recent
    @statuses = Status.recent
  end
end
