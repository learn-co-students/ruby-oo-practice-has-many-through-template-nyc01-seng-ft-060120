#class for Model3 goes here
#Feel free to change the name of the class
class Ride

    attr_reader :rider, :scooter, :miles, :duration_minutes

    @@all = []

    def initialize(rider, scooter, miles, duration_minutes)
        @rider = rider
        @scooter = scooter
        @miles = miles
        @duration_minutes = duration_minutes
        @@all << self
    end

    def price_dollars
        @duration_minutes * 0.25
    end

    def self.all
        @@all
    end
  
end
