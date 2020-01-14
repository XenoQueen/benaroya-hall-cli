class Benaroya::Concert
  
  attr_accessor :name, :date, :time, :tickets
  @@all = []
  
  def initialize(name, date, time, tickets)
    @name = name
    @date = date
    @time = time
    @tickets = tickets
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_by_index(index)
    @@all[index]
  end
end