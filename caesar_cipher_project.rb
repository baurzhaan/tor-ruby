=begin https://www.theodinproject.com/lessons/ruby-caesar-cipher

  Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
  
  > caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"
=end

require 'pry'

def caesar_cipher(string, shift_factor)

  alphabet = 'abcdefghijklmnopqrstuvwxyz'.chars
  
  alphabet_length = alphabet.length

  result_array = []
  capital_letters = []

  # save the location of all uppercase letters
  string.chars.each_index { |index| capital_letters << index if string.chars[index].match(/[A-Z]/) }

  string_array = string.downcase.chars

  string_array.each_index do |index|

    if !alphabet.index(string_array[index])
      result_array << string_array[index]
      # print "#{string_array[index]} => #{shift_factor} = #{string_array[index]}"
      # puts
      next
    end

    # print "#{string_array[index]} => #{shift_factor} = "

    if alphabet.index(string_array[index]) + shift_factor < alphabet_length
      
      result_array << alphabet[alphabet.index(string_array[index]) + shift_factor]
      # puts "#{alphabet[alphabet.index(string_array[index]) + shift_factor]}"
    else
      result_array << alphabet[alphabet.index(string_array[index]) + shift_factor - alphabet_length]
      # puts "#{alphabet[alphabet.index(string_array[index]) + shift_factor - alphabet_length]}"
    end
  end
  
  if capital_letters
    capital_letters.each_index { |index| result_array[capital_letters[index]] = result_array[capital_letters[index]].upcase }
  end

  # puts result_array.join()
  result_array.join
end

p caesar_cipher("What a striNg!", 5) # 
p caesar_cipher("WHAT A STRING!", 5)
p caesar_cipher("WHAT A STRING!", 2)
# puts "Bmfy f xywnsl!"