class Student

    attr_accessor :name
   
    @@all = []
   
    def initialize(name)
        @name = name
        @@all << self
    end 
    
    def self.all
        @@all
    end 

    def create_membership(club.id)
        Membership.new(self,club,id)
    end 

    def delete_membership
        Membership.all.select do |membership|
            if membership.student == self
                Membership.all.delete(self) 
            end 
    end 

    def club
        Membership.all.map do |membership|
            membership.club == self 
    end 

end 