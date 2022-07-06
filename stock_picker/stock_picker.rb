def stock_picker(prices)
  pairs = prices.combination(2).to_a
  profit = 0
  best_days = ''
  pairs.each do |pair|
    margin = pair[1]-pair[0]
    if (margin) > profit
      profit = margin
      best_days = pair
    end
  end
  return best_days
end
