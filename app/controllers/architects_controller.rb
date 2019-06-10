class ArchitectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @architects = policy_scope(Architect)

    loc_filter = params[:location].blank? ? Architect::LOCATION : params[:location]
    spe_filter = params[:speciality].blank? ? Architect::SPECIALITY : params[:speciality]
    a_filter = params[:available].blank? ? true : params[:available]
    bu_filter = params[:budget].blank? ? 1_000_000 : params[:budget]

    sql_query = " \
      location IN (:loc) \
      AND speciality IN (:spe) \
      AND available = :a \
      AND min_project_budget <= :bu\
    "
    @architects = @architects.where(sql_query, loc: loc_filter, spe: spe_filter, a: a_filter, bu: bu_filter )
  end

  def show
    @architect = Architect.find(params[:id])
    @appointment = Appointment.new
    authorize @architect
  end
end
