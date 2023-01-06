# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn

  
    def initialize(name)
        @name = name
        @color = "silver"
    end

    #make attribute readers
    attr_reader :name
    attr_reader :color
    
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
  
    def initialize(name)
        @name = name
        @pet = "bat"
        @is_thirsty = true
    end

    # make attribute readers
    attr_reader :name
    attr_reader :pet
    attr_reader :is_thirsty

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
    
  
    def initialize(name,rider,color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @eat_count = 4
    end

    # make attribute readers
    attr_reader :name
    attr_reader :rider
    attr_reader :color
    attr_reader :is_hungry
    attr_reader :eat_count

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

    def initialize(name,disposition)
    
    end

    # make attribute readers
    attr_reader :


    def celebrate_birthday
    end

    
end