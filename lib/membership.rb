class Membership

    attr_accessor :student, :club, :date 
   
    @@all = []
   
    def initialize(student, club, id)
        @student = student
        @club = club
        @date = date 
        @@all << self
    end 
    
    def self.all
        @@all
    end 

end 

