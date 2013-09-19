class TopicsController < ApplicationController
  
  def index
    @topics = Topic.all
  end
  
  def show
    @topic = Topic.includes(:responses).find(params[:id])
    @responses = @topic.responses
  end
  
end
