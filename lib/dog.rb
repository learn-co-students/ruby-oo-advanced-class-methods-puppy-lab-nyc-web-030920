# Add your code here

# Build a class with instance methods.
# Call instance methods inside of other instance methods.
# Use instance methods to track information pertinent to an instance of a class.

class Dog
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def self.print_all
        self.all.each do |dog|
            puts "#{dog.name}"
        end
    end

    def self.clear_all
        self.all.clear
    end

    
end
