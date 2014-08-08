

class Station
  attr :name

  def initialize(name)
    @name = name
  end

  def self.all

    all_stations = DB.exec("SELECT * FROM station;")
    stations = []
    all_stations.each do |result|
      name = result['name']
      stations << Station.new(name)
    end
   stations
  end

  def save
    DB.exec("INSERT INTO station (name) VALUES ('#{@name}')")
  end

  def ==(another_station)
    self.name == another_station.name
  end
end


