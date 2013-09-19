class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end
end