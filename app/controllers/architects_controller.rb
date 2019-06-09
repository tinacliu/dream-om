class ArchitectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @architects = policy_scope(Architect)
  end

  def show
    @architect = Architect.find(params[:id])
    authorize @architect
  end
end
