require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

puts "hello world"

paola = GhostHunter.new("Paola")
kate = GhostHunter.new("Kate")
lina = GhostHunter.new("Lina")
tim = GhostHunter.new("Tim", experience="GHOST BUSTER!")

house1 = HauntedHouse.new("Sad House", "lame")
house2 = HauntedHouse.new("Hill House", "super creepy")
house3 = HauntedHouse.new("Hogwarts", "medium creepy")

babadook = Ghost.new("Babadook", house1, kate, "Accident")
lady_in_white = Ghost.new("Lady in White", house3, kate, "Murder")
moaning_myrtle = Ghost.new("Moaning Myrtle", house3, lina, "Accident")
pennywise = Ghost.new("Pennywise", house3, tim, "Murder")






binding.pry
0 #leave this here to ensure binding.pry isn't the last line
