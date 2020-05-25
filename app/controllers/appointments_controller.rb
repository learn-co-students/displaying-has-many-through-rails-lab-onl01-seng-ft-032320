class AppointmentsController < ApplicationController
    def show
        @appointment = Appointment.find(params[:id])
    end
    def not_found
        raise ActionController::RoutingError.new('Not Found')
    end
end
