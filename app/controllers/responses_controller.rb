class ResponsesController < ApplicationController
  def create
    Response.create(topic_id: topic_id, content: params[:response][:content])
    redirect_to topic_url(id: topic_id), status: 301
  end

  private

  def topic_id
    params[:topic_id]
  end

end
