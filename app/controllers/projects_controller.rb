class ProjectsController < ApplicationController

  def index
    @projects = policy_scope(Project)
  end

  def show
    @project = Project.find(params[:id])
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    authorize @project
    if @project.save
      flash[:notice] = "Project successfully created"
    else
      flash[:alert] = "Project could not be saved"
    end
    redirect_to profile_path

  end

  private

  def project_params
    params.require(:project).permit(:brief, :title, :budget, :category, :plot_postcode)
  end


end
