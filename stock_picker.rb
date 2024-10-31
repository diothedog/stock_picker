def stock_picker(prices)
  max_profit = 0
  buy_day = 0
  sell_day = 1
  for i in prices
    for j in (i + 1)...prices.length
      profit = prices[j] - prices[i]
      if profit > max_profit
        max_profit = profit
        buy_day = i
        sell_day = j
      end
    end
  end
  p [buy_day, sell_day]
end

stock_picker([17, 3, 6, 9, 15,8, 6, 1, 10])