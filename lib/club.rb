class Club

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def new_membership(student,date)
        Membership.new(student,self,date)
    end 

    def members 
        Membership.all.select do |membership|
            membership.class == self 
        end 
    end 

end 