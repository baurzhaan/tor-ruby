=begin
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
  > stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12
=end

def stock_picker(stock_prices)
  # print array of stock prices
  p stock_prices
  # return the biggest and the smallest price
  biggest, smallest = stock_prices[0], stock_prices[0]
  stock_prices.each do |price|
    biggest = price if price > biggest
    smallest = price if price < smallest
  end
  p "biggest: #{biggest}"
  p "smallest: #{smallest}"
  # iterate through each array index
  stock_prices.each_index do |price_index|
    puts price_index
  end
end

stock_picker([17,3,6,9,15,8,6,1,10])