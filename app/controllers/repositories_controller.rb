class RepositoriesController < ApplicationController
  def new
    @repository = Repository.new
  end

  def create
    @repository = Repository.create(repository_params)
  end

  def destroy
    Repository.destroy(params[:id])
  end

  private

  def repository_params
    params.require(:repository).permit(:link)
  end
end
