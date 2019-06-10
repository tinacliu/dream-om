class ProjectsController < ApplicationController

  def index
    @projects = policy_scope(Project)
  end


  def show
    @project = Project.find(params[:id])
    authorize @project
  end

  def create

  end

end
