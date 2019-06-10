class AppointmentsController < ApplicationController

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.architect = Architect.find(params[:architect_id])
    @appointment.project = Project.first #Since we don't have a way to get  the project otherwise
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
    params.require(:appointment).permit(:architect_id)
  end


end
