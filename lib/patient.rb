require "pry"
require_relative "./appointment.rb"
require_relative "./doctor.rb"


class Patient

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def new_appointment(a_Doctor, date)
    Appointment.new(date, a_Doctor, self)
  end

  def doctors
    doctors_array = []
    Appointment.all.each do |appointment|
      if appointment.patient == self
        doctors_array.push(appointment.doctor)
      end
    end
    doctors_array.uniq
  end

  def appointments
    appointment_array = []
    Appointment.all.each do |appointment|
      if appointment.patient == self
        appointment_array << appointment
      end
    end
    appointment_array
  end
end
