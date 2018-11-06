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
    
  end
  
end