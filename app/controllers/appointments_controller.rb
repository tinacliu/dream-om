class AppointmentsController < ApplicationController
  before_action :set_architect, only: [:create]


  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.architect = Architect.find(params[:architect_id])
    authorize @appointment
    if @appointment.save
      flash[:notice] = "Appointment request received"
      redirect_to profile_path(tab: :appt)
    else
      flash[:alert] = "Error with the appointment request"
      redirect_to architect_path(@appointment.architect)
    end
  end

  def destroy

  end


  private

  def set_architect
    @architect = Architect.find(params[:architect_id])
  end

  def appointment_params
    params.require(:appointment).permit(:appt_time, :project_id)
  end


end
