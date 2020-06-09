class DoctorsController < ApplicationController
   
    def show 
        @doctor = Doctor.find_by_id(params[:id])
        @patient = @doctor.patients
    end
end
