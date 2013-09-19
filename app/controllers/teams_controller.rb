class TeamsController < ApplicationController
  
  def create
    @team = Team.create!(params[:team])
  end

  def update
    @team = Team.find(params[:id])
    @team.update_attributes!(params[:team])
  end
  
  def index
    @teams = Team.recent_creation
  end

  def show
    @team = Team.find(params[:id])
  end

  def delete
    @team = Team.find(params[:id])
    @team.destroy
  end
end