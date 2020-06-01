class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
  end

  private 
  
  def appt_params 
    params.require(:appointment).permit(:appointment_datetime, doctors_attributes: [:name, :department], patients_attributes: [:name, :age])
  end 
end
