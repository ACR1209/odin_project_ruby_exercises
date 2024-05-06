def stock_picker(stocks)
  return [] if stocks.nil? || stocks.length < 2

  min_price_index = 0
  max_profit = 0
  buy_day = -1
  sell_day = -1

  stocks.each_with_index do |price, index|
    if price < stocks[min_price_index]
      min_price_index = index
    elsif price - stocks[min_price_index] > max_profit
      max_profit = price - stocks[min_price_index]
      buy_day = min_price_index
      sell_day = index
    end
  end

  [buy_day, sell_day]
end

pp stock_picker([17,3,6,9,15,8,6,1,10])
pp stock_picker([20,3,6,9,1,8,6,3,1])
