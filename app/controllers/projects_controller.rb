class ProjectsController < ApplicationController


  def index
    @projects = policy_scope(Project)
  end

  def show
    @project = Project.find(params[:id])
    authorize @project
  end

  def create
    create_project
    redirect_to profile_path
  end

  def architects
    create_project
    redirect_to architects_path(speciality: @project.category, budget: @project.budget)
  end

  private

  def project_params
    params.require(:project).permit(:brief, :title, :budget, :category, :plot_postcode)
  end

  def create_project
    @project = Project.new(project_params)
    @project.user = current_user
    authorize @project
    if @project.save
      flash[:notice] = "Project successfully created"
    else
      flash[:alert] = "Project could not be saved"
    end
  end
end
