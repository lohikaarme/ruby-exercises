# require 'pry-byebug'

# def isogram?(string)
#     original_length = string.length
#     string_array = string.downcase.split

#     binding.pry

#     unique_length = string_array.uniq.length
#     original_length == unique_length
    
# end

# isogram?("Odin")


# require 'pry-byebug'

def yell_greeting(string)
    name = string

    # binding.pry

    name = name.upcase
    greeting = "WASSAP, #{name}!"
    puts greeting
    p greeting
    pp greeting
    p greeting.class
    p greeting.methods - Object.instance_methods
end

yell_greeting('test')