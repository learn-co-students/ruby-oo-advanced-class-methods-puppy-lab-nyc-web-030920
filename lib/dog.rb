# Add your code here
class Dog
@@all = []
attr_accessor :name

def initialize(name)
    @name = name
    @save = save 
    
end

def self.all
    @@all
end

def save 
    Dog.all << self 
end

def self.print_all
    Dog.all.each do |dog|
        puts dog.name 
    end
end

def self.clear_all
    Dog.all.clear
end

end
