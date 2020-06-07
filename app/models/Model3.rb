#class for Model3 goes here
#Feel free to change the name of the class
class HauntedHouse

    attr_reader :house_name
    attr_accessor :creepiness

    @@all = []

    def initialize(house_name, creepiness)
        @house_name = house_name
        @creepiness = creepiness
        @@all << self
    end

    def self.all
        @@all
    end

    def add_ghost(nickname, ghost_hunter, death)
        Ghost.new(nickname, self, ghost_hunter, death)
    end

    def all_ghosts
        Ghost.all.select do |ghost|
            ghost.house_name == self
        end
    end

    def all_ghost_names
        all_ghosts.map do |ghost|
            ghost.nickname
        end
    end

    def ghost_hunters_in_the_house
        all_ghosts.map {|ghost| ghost.ghost_hunter}.uniq
    end

    def ghost_hunter_names
        ghost_hunters_in_the_house.map do |ghost_hunters|
            ghost_hunters.name
        end
    end

    def call_for_help

        #if a house is either "medium creepy" or "super creepy", any ghost hunter with an experience level of 
        #"beginner" must call on a ghost hunter with an experience level of "associate" or "GHOST BUSTER!" for 
        #backup
    
        newbs = ghost_hunters_in_the_house.select {|ghost_hunter| ghost_hunter.experience == "beginner"}
        experts = ghost_hunters_in_the_house.select {|ghost_hunter| ghost_hunter.experience != "beginner"}
        if newbs && self.creepiness == "medium creepy" || "super creepy"
        newbs.map do |newbs|
            newbs.name 
            puts "Watch out #{newbs.name}!"
        end
            experts.map do |experts|
                experts.name
            puts "Call for backup from #{experts.name}!"
            end
        
        
        
        end
        
    end
  
end
