# caesar_cipher exercise to create a cipher
# that will shift characters by a set value

public

def caesar_cipher(string, shift = 0)
  alpha = ('a'..'z').to_a
  ciphered = string.split('').map do |value|
    char_check = alpha.find_index(value)
    if char_check.nil?
      value
    else
      alpha[char_check + shift]
    end
  end
  output = ciphered.join
  p output
end

# shifted = caesar_cipher("This is a test of the method 'caesar_cipher'",5)
# caesar_cipher(shifted,-5)

# caesar_cipher("This is another test of the method 'caesar_cipher'")
