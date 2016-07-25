def stock_picker
  array=[44, 30, 24, 32, 35, 30, 40, 38, 15]
  sell_day=0
  buy_day=0
  max_value=0
  value=0
  best_buy_day=0
  best_sell_day=0

  array.each_with_index do |buy_price,i|
    array.each_with_index do |sell_price,j|
      if i < j
        value = sell_price-buy_price
        buy_day = i
        sell_day= j
        if max_value < value
          max_value = value
          best_buy_day =i
          best_sell_day=j
    end
  end
  end
end
  puts"[#{best_buy_day} "+"#{best_sell_day}]" + "#{max_value}"
end
