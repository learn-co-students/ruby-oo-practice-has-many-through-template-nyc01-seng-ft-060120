class Magazine
    attr_reader :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.allMags
        self.all.map do |mags|
            mags.name
        end
    end

end
