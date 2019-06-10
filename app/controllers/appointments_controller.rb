class AppointmentsController < ApplicationController
  before_action :set_architect, only: [:create]


  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.architect = Architect.find(params[:architect_id])
    authorize @appointment
    if @appointment.save
      flash[:success] = "Appointment successfully created"
    else
      flash[:warning] = "Appointment could not be created"
    end
    redirect_to profile_path
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
