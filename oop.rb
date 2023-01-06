# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    #make attribute readers
    attr_reader :name
    attr_reader :color
  
    def initialize(name)
        @name = name
        @color = "silver"
    end
   
    def say(message)
      "*~* #{message} *~*"
    end  

end

leo = Unicorn.new("Leo")
puts leo.say("My name is #{leo.name}!")



#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

# create class
class Vampire

    # make attribute readers
    attr_reader :name
    attr_reader :pet
    attr_reader :is_thirsty
  
    def initialize(name)
        @name = name
        @pet = "bat"
        @is_thirsty = true
    end

    def drink
        @is_thirsty = false
    end  

end

# create object instance of vampire class named sam
sam = Vampire.new("Sam")
# print is_thirsty attribute called on sam to check that it is true
p sam.is_thirsty
# call drink method on sam
sam.drink
# print is_thirsty called on sam attribute to check if it is now false
p sam.is_thirsty


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry


# create class
class Dragon
 
     # make attribute readers
     attr_reader :name
     attr_reader :rider
     attr_reader :color
     attr_reader :is_hungry
     attr_reader :eat_count   
  
    def initialize(name,rider,color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @eat_count = 4
    end

    def eat
        # each time dragon eats, eat_count decrements by 1 and prints out how many more times it needs to eat
        # when eat_count reaches 1, it will have been the last time it needs to eat, so is_hungry turns false
        # after eat_count reaches 0, dragon will say no more
        if @eat_count > 1
            @eat_count -= 1
            puts "I'm still hungry! #{@eat_count} more please"
        elsif @eat_count == 1
            @eat_count -= 1
            @is_hungry = false
            puts "I'm so full!"
        else
            puts "No more food please!"
        end
    end  

end

# create object instance of dragon class named june
june = Dragon.new("June","Brandon","purple")
# print is_hungry attribute called on june to check that it is true
p june.is_hungry
p june.eat_count
# call eat method on june and check eat count
june.eat
june.eat
june.eat
# fourth time to eat, should say she's full
june.eat
# print is_hungry attribute to check if it is now false
p june.is_hungry
# fifth time to eat, says no more
june.eat 



#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.


# create class
class Hobbit

    # make attribute readers
    attr_reader :name, :disposition, :age
    attr_reader :is_adult, :is_old, :has_ring

    def initialize(name,disposition)
        @name = name
        @disposition = disposition
        @age = 0
        @is_adult = false
        @is_old = false
        #value of has_ring depends on the name 
        @has_ring = 
            if @name == "Frodo"
                true
            else
                false
            end 
    end
    
    def celebrate_birthday
        @age += 1
        
        # ***QUESTION*** 
        # I tried to include ages over 33 and over 101 
        # account for is_adult and is_old to be true if
        # age is changed outside of the celebrate_birthday method
        # but I realized is_adult and is_old will only turn true 
        # if celebrate_birthday method is called...
        

        #changes is_adult to true when age reaches 33
        if @age >= 33
            @is_adult = true
        end    
        #changes is_old to true when age reaches 101
        if @age >= 101
            @is_old = true
        end
    end
end

frodo = Hobbit.new("Frodo","shy")
(1...34).each do
    frodo.celebrate_birthday
end
p frodo 

bilbo = Hobbit.new("Bilbo","polite")
(1...102).each do
    bilbo.celebrate_birthday
end
p bilbo