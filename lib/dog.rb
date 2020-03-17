class Dog
    
    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        self.save
    end
    def save
        Dog.all << self
    end

    def self.all  
        return @@all 
    end
    def self.print_all
        self.all.each {|dog| puts dog.name}
    end
    def self.clear_all
        @@all = []
    end
end