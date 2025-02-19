class Doctor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        appt = Appointment.new(date, patient, self)
        appt
    end

    def appointments
        Appointment.all.select {|appt| appt.doctor == self}
    end

    def patients
        appointments.map {|appt| appt.patient}
    end

end