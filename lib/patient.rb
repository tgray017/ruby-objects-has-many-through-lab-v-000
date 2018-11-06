class Patient
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def all
    @@all
  end
  
  def new_appointment(doctor, date)
    new_appointment = Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointments.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    Appointments.all.collect {|appointment| appointment.doctor if appointment.patient == self}
  end
  
end