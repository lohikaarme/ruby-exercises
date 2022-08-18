def caesar_cipher(string, shift)
    alpha = ("a".."z").to_a
    ciphered = string.split("").map do |value| 
        char_check = alpha.find_index(value)
        unless char_check == nil
            alpha[char_check + shift]
        else
            value
        end
    end
    output = ciphered.join
    p output
end


shifted = caesar_cipher("This is a test of the method 'caesar_cipher'",5)
caesar_cipher(shifted,-5)