require 'pry'
require_relative 'appointment.rb'

class Doctor

    attr_accessor :name
    attr_reader :date, :patient

    @@all = [ ]

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date, patient)
        appointment = Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def patients
        appointments.map {|appointment| appointment.patient}
    end

end