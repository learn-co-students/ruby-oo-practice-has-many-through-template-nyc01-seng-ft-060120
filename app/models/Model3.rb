
class Person
    attr_accessor :name, :surname, :email

    def initialize(name, surname, email)
        @name = name
        @surname = surname
        @email = email
    end

    def subscription(level, magazine)
        Subscription.new(self, level, magazine)
    end

    def upgrade
        Subscription.upgrade(self)
    end

    def cancel
        Subscription.cancel(self)
    end
  
end
