#class for Model1 goes here
#Feel free to change the name of the class
class GhostHunter

attr_accessor :experience, :name

    @@all = []

    def initialize(name, experience="beginner")
        @name = name
        @experience = experience
        @@all << self
    end

    def self.all
        @@all
    end

    def add_ghost(nickname, house_name, death)
        Ghost.new(nickname, house_name, self, death)
    end


    def all_ghosts
        Ghost.all.select do |ghost|
            ghost.ghost_hunter == self
        end
    end

    def all_ghost_names
        all_ghosts.map do |ghost|
            ghost.nickname
        end
    end

    def all_houses
        all_ghosts.map do |ghost|
            ghost.house_name
        end
    end


    def level_up
        #after dealing with at least 3 houses with a "super creepy" creepiness level, the ghost_hunter
        #experience will go from either "beginner" to "associate" or from "associate" to "ghost buster"
        super_creepy_houses = all_houses.select do |house|
            house.creepiness == "super creepy"
        end
        if super_creepy_houses.length >=3 
            if self.experience == "beginner"
                self.experience = "associate"
            else
                self.experience = "GHOST BUSTER!"
            end
        end
    end
    end

