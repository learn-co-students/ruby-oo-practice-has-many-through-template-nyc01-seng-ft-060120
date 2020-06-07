require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

max = Rider.new("Max", 26, "844305673")
amanda = Rider.new("Amanda", 23, "88952305673")
samantha = Rider.new("Samantha", 24, "1345305673")

scooter_one = Scooter.new("a8953of0385")
scooter_two = Scooter.new("ef782357hd")
scooter_three = Scooter.new("fe89235892")

Ride.new(max, scooter_one, 2.4, 12.84)
Ride.new(amanda, scooter_three, 1.4, 8.3)
Ride.new(samantha, scooter_two, 3.21, 18.23)
Ride.new(max, scooter_three, 2.3, 11.12)

# scooter_three.rides
# scooter_three.miles_driven
# scooter_three.time_driven

# max.rides
# max.miles_driven
# max.time_driven
# max.total_paid

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
