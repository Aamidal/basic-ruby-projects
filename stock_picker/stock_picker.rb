# def stock_picker(prices)
#   min_max = prices.minmax
#   unless prices.find_index(min_max[0]) < prices.find_index(min_max[1])
#     buy_days = prices[0, prices.length-1]
#     profit = 0
#     buy_days.each_index do |buy|
#       sell_days = prices[buy+1, prices.length]
#       sell_days.each_index do |sell|
#         margin = sell_days[sell] - buy_days[buy]
#         if margin > profit 
#           profit = margin
#           min_max[0] = buy_days[buy]
#           min_max[1] = sell_days[sell]
#         end
#       end
#     end
#   end
#   buy_sell_days = []
#   buy_sell_days[0] = prices.find_index(min_max[0])
#   buy_sell_days[1] = prices.find_index(min_max[1])
#   return buy_sell_days
# end

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


p stock_picker([17,3,6,9,15,8,6,1,10])