def stock_picker (dates)
    max_profit = 0
    buy_date = 0
    sell_date = 0
   
    dates.each_with_index do |buy, buy_idx|
        dates.each_with_index do |sell, sell_idx|
            profit = sell - buy
            if profit > max_profit && sell_idx > buy_idx
                max_profit = profit
                buy_date = buy_idx
                sell_date = sell_idx
            else
                next
            end
        end
    end

    puts "for a profit of $#{dates[sell_date]} - $#{dates[buy_date]} = $#{max_profit}"
    p [buy_date,sell_date] 
    
end

stock_picker([17,3,6,9,15,8,6,1,10])
