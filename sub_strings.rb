=begin https://www.theodinproject.com/lessons/ruby-sub-strings

Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

> dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
=> ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
> substrings("below", dictionary)
=> { "below" => 1, "low" => 1 }

----------------------------------------

Next, make sure your method can handle multiple words:

> substrings("Howdy partner, sit down! How's it going?", dictionary)
=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

=end

def substrings(word, dictionary)
  # print a word and an array of valid substrings
  # puts "word: #{word}"
  # puts "dictionary: #{dictionary}"

  # print a hash of each substring in the array as a key and a value of 1
  # result_hash = {}
  # dictionary.each { |substring| result_hash[substring] = 1 }
  # puts "result hash: #{result_hash}"

  # iterate through each substring and check it is in the word
  # result = {}
  # dictionary.each do |substring|
  #   puts "#{word} -> #{substring} -> #{word.match?(substring)}"
  # end

  # iterate through each substring and check it is in the word. Then count it.
  result = {}
  dictionary.each { |substring| result[substring] = 0 }
  
  word_destructured = word.split(' ')

  dictionary.each do |substring|
    word_destructured.each do |single_word|
      result[substring] = result[substring] + 1 if single_word.downcase.match?(substring)
    end
  end
  
  res = result.select { |substring, count| count > 0 }
  
  # puts word
  # puts word.split(' ')

  # puts result
  puts res

end

# word = "below"
dictionary = %w[below down go going horn how howdy low it i low own part partner sit]
substrings("Howdy partner, sit down! How's it going?", dictionary)
# substrings("Howdy how's, How?", dictionary)
puts '{"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}'