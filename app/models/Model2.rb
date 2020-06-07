#class for Model2 goes here
#Feel free to change the name of the class
class Rider

    @@all = []

    def initialize(name, age, license_number)
        @name = name
        @age = age
        @license_number = license_number
        @@all << self
    end

    def rides
        Ride.all.select{|ride| ride.rider == self}
    end

    def miles_driven
        self.rides.sum{|ride| ride.miles}
    end

    def time_driven
        self.rides.sum{|ride| ride.duration_minutes}
    end

    def total_paid
        self.rides.sum{|ride| ride.price_dollars}
    end

    def self.all
        @@all
    end

end
