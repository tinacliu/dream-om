class PlotsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @plots = policy_scope(Plot).order
  end

  def show
    @plot = Plot.find(params[:index])
    authorize @plot
  end

end
