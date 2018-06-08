require "pry"
require_relative "./doctor.rb"
require_relative "./patient.rb"


# Appointment
#   .all
#     knows about all appointments that have been created (FAILED - 6)
#   #new
#     initializes with a patient, doctor, and date (FAILED - 7)
#   #patient
#     belongs to a patient (FAILED - 8)
#   #doctor
#     belongs to a doctor (FAILED - 9)




class Appointment

  attr_accessor :patient, :doctor, :date

  @@all = []

  def self.all
    @@all
  end

  def initialize(date, doctor, patient)
    if Patient.all.include?(patient) && Doctor.all.include?(doctor)
      @patient = patient
      @doctor = doctor
      @date = date
      self.class.all << self
    end
  end

end
