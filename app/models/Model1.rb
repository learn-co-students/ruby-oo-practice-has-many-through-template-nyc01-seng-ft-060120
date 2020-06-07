#class for Model1 goes here
#Feel free to change the name of the class
class Scooter

    attr_reader :model_number

    @@all = []

    def initialize(model_number)
        @model_number = model_number
        @@all << self
    end

    def rides
        Ride.all.select{|ride| ride.scooter == self}
    end

    def miles_driven
        self.rides.sum{|ride| ride.miles}
    end

    def time_driven
        self.rides.sum{|ride| ride.duration_minutes}
    end

    def self.all
        @@all
    end

end
