class Patient
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    new_appointment = Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    Appointment.all.collect {|appointment| appointment.doctor if appointment.patient == self}
  end
  
end