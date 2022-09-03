class MyCar
    attr_accessor :colour
    attr_reader :year

    def initialize(year, colour, model)
        @year = year
        @colour = colour
        @model = model
        @speed = 0
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