class Person
    attr_accessor :name
    def initialize(name)
      @name = name
    end
  end
  
  bob = Person.new("Steve")
  p bob.name
  bob.name = "Bob"
  p bob.name

class Student
    attr_reader :name
    
    def initialize(name, grade)
        @name = name
        @grade = grade
    end

    def better_grade_than?(other_person)
        grade > other_person.grade
    end

    protected
    attr_reader :grade # @grade also works
end

bob = Student.new('bob',75)
joe = Student.new('joe', 95)
puts "Well done!" if joe.better_grade_than?(bob)

p joe.name
# p joe.grade, throws an error

module Towable
    def can_tow(weight)
        p "Towable" if weight < 2000 
    end
end

class Vehicle
    @@number_of_vehicles = 0
    
    attr_accessor :colour
    attr_reader :year

    def self.total_number_of_vehicles
        @@number_of_vehicles
    end

    def initialize(year, colour, model)
        @year = year
        @colour = colour
        @model = model
        @speed = 0
        @@number_of_vehicles += 1
    end

    def self.mileage (tank_size, range)
        p range/tank_size
    end

    def speed (change)
        @speed += change
        p @speed
    end

    def current_speed
        p @speed
    end

    def on_off (status)
        if status == 0
            @speed = 0
            p @speed
        else
            p @speed
        end
    end

    def spray_paint(colour)
        self.colour = colour
        p self.colour
    end

    def to_s # will be called automatically on puts
        "My vehicle is a #{colour}, #{year}, #{@model}!"
    end

    def age
        p age_calc
    end

    private
    def age_calc
        Time.now.year - self.year # @year also worked
    end

end

class MyTruck <Vehicle
    include Towable

    NUM_DOORS = 2
    
    def to_s # will be called automatically on puts
        "My truck is a #{colour}, #{year}, #{@model}!"
    end

end

class MyCar < Vehicle

    NUM_DOORS = 2

    def to_s # will be called automatically on puts
        "My car is a #{colour}, #{year}, #{@model}!"
    end
end




lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed(50)
lumina.current_speed
lumina.speed(20)
lumina.current_speed
lumina.speed(-20)
lumina.current_speed
lumina.speed(-20)
lumina.current_speed
lumina.on_off(0)
lumina.current_speed
lumina.colour = 'red'
p lumina.colour
p lumina.year
lumina.spray_paint('black')
MyCar.mileage(30,500)

my_car= MyCar.new("2010", "silver", "Ford Focus",)
puts my_car # automatically uses newly defined #to_s # => My car is a silver, 2010, Ford Focus.

p Vehicle.total_number_of_vehicles

red = MyTruck.new(1988, 'Larado', 'red')
red.can_tow(1000)
red.age

p Vehicle.total_number_of_vehicles

p Vehicle.ancestors
p MyCar.ancestors
p MyTruck.ancestors
p Towable.ancestors