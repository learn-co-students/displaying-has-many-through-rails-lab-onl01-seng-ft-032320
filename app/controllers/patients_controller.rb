class PatientsController < ApplicationController
   
    
    def index 
        @patients = Patient.all
    end
    
    def show 
        @patient = Patient.find_by_id(params[:id])
        @doctor = @patient.doctors
    end

end
