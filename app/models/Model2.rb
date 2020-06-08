require 'date'

class Subscription
    attr_reader :person, :magazine, :start
    attr_accessor :level, :end

    @@all = []

    def initialize(person, level, magazine)
        @person = person
        @level = level
        @magazine = magazine
        @start = Date.today
        @@all << self
    end

    def self.all
        @@all
    end
   
    def self.find_sub_index(subscriber)
        index = Subscription.all.find_index do |sub|
            sub.person == subscriber
        end
        index
    end

    def self.cancel(subscriber)
        Subscription.all.delete_at(Subscription.find_sub_index(subscriber))
    end

    def self.upgrade(subscriber)
        Subscription.all[Subscription.find_sub_index(subscriber)].level = "Premium"
    end


end
