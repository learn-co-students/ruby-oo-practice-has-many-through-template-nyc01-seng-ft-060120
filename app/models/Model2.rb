#class for Model2 goes here
#Feel free to change the name of the class
class Ghost

    attr_reader :house_name, :death
    attr_accessor :nickname, :ghost_hunter

    @@all = []

    def initialize(nickname, house_name, ghost_hunter, death)
        @nickname = nickname
        @house_name = house_name
        @ghost_hunter = ghost_hunter
        @death = death
        @@all << self
    end
    
    def self.all
        @@all
    end


 

end
