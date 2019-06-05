class PlotsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @plots = policy_scope(Plot)#.where.not(latitude: nil, longitude: nil)
    @plots = @plots.near(params[:address], 10) if params[:address]
    set_markers

  end

  def show
    @shortlist = Shortlist.new
    @plot = Plot.find(params[:id])
    authorize @plot
    @markers = [
      {
        lat: @plot.latitude,
        lng: @plotlongitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { plot: @plot })
      }
    ]
  end

  private

  def set_markers
    @markers = @plots.map do |plot|
      {
        lat: plot.latitude,
        lng: plot.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { plot: plot })

      }
    end
  end
end
