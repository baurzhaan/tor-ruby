=begin https://www.theodinproject.com/lessons/ruby-caesar-cipher

  Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
  
  > caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"
=end

def caesar_cipher(string, shift_factor)

  alphabet = 'abcdefghijklmnopqrstuvwxyz'.chars
  
  alphabet_length = alphabet.length

  result_array = []
  capital_letters_indices = []

  string.chars.each_index { |index| capital_letters_indices << index if string.chars[index].match(/[A-Z]/) }

  string_array = string.downcase.chars

  string_array.each_index do |index|

    if !alphabet.index(string_array[index])
      result_array << string_array[index]
      next
    end

    if alphabet.index(string_array[index]) + shift_factor < alphabet_length
      result_array << alphabet[alphabet.index(string_array[index]) + shift_factor]
    else
      result_array << alphabet[alphabet.index(string_array[index]) + shift_factor - alphabet_length]
    end
  end
  
  if capital_letters_indices
    capital_letters_indices.each { |index| result_array[index] = result_array[index].upcase }
  end

  result_array.join
end

p caesar_cipher("What a striNg!", 5)
p caesar_cipher("WHAT A STRING!", 5)
p caesar_cipher("WHAT A STRING!", 2)
p caesar_cipher("What a string!", 5)