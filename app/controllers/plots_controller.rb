class PlotsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @plots = policy_scope(Plot)#.where.not(latitude: nil, longitude: nil)
    @plots = @plots.near(params[:address], 10) if params[:address]

    t_filter = params[:type].blank? ? Plot::TYPE : params[:type]
    min_p = params[:min_p].blank? ? 0 : params[:min_p]
    max_p = params[:max_p].blank? ? 1_000_000 : params[:max_p]

    sql_query = " \
      property_type IN (:t) \
      AND price BETWEEN :min_p AND :max_p \
    "
    @plots = @plots.where(sql_query, t: t_filter, min_p: min_p, max_p: max_p)

    set_markers
  end

  def show
    @plot = Plot.find(params[:id])
    authorize @plot
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
