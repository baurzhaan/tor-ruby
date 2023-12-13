=begin https://www.theodinproject.com/lessons/ruby-caesar-cipher

  Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
  
  > caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"
=end

def caesar_cipher(string, shift_factor)
  
  # store the indices of capital letters of the input string
  capital_letters_indices = []
  string.chars.each_index { |index| capital_letters_indices << index if string.chars[index].match(/[A-Z]/) }
  string.downcase!

  # store the alphabet a an array
  alphabet = 'abcdefghijklmnopqrstuvwxyz'.chars

  # store the indices of input string letters in alphabet
  string_indices_in_alphabet = []
  string.chars.each { |char| char.match(/[a-z]|[A-Z]/) ? string_indices_in_alphabet << alphabet.index(char) : string_indices_in_alphabet << char }

  # rotate the alphabet by a shift factor
  alphabet.rotate!(shift_factor)

  # result
  result = []
  string_indices_in_alphabet.each { |index| index.class == Integer ? result << alphabet[index] : result << index }
  capital_letters_indices.each { |index| result[index] = result[index].upcase }
  result.join
end

p caesar_cipher("What a striNg!", 5)
p caesar_cipher("WHAT A STRING!", 5)
p caesar_cipher("WHAT A STRING!", 2)
p caesar_cipher("What a string!", 5)