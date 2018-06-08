require "pry"
require_relative "./appointment.rb"
require_relative "./patient.rb"

# Doctor
#   #name
#     has a name (FAILED - 1)
#   #new
#    // initializes with a name and adds itself to an array of all doctors (FAILED - 2)

class Doctor

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  #   #new_appointment
  #     given a date and a patient, creates a new appointment (FAILED - 3)

    def new_appointment(a_Patient, date)
    
      Appointment.new(date, self, a_Patient)
    end
    #   #appointments
    #     has many appointments (FAILED - 4)
    def appointments
      Appointment.all.select{|appointment| appointment.doctor == self}
    end
    #   #patients
    #     has many patients, through appointments (FAILED - 5)
    def patients
      patients_array = []
      Appointment.all.each do |appointment|
        if appointment.doctor == self
          patients_array.push(appointment.patient)
        end
      end
      patients_array.uniq
    end


end
