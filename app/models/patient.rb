class Patient < ApplicationRecord
    has_many :doctors
    has_many :appointments
    has_many :doctors, through: :appointments

    def appointment_count
        self.appointments.count
      end
end
