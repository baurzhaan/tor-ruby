=begin
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
  > stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12
=end

def stock_picker(stock_prices)

  result = Array.new
  buy_sell_diff = 0

  stock_prices.each_index do |price_index|
    stock_prices[price_index + 1..-1].each_index do |inner_index|
      next if stock_prices[price_index] > stock_prices[price_index + inner_index + 1]
      
      current_diff = stock_prices[price_index] - stock_prices[price_index + inner_index + 1]
      if current_diff.abs > buy_sell_diff
        buy_sell_diff = current_diff.abs
        result = [price_index, price_index + inner_index + 1]
      end
    end
  end
  result
end

p stock_picker([17,3,6,9,15,8,6,1,10])