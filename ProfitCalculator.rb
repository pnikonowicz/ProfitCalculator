#!/usr/bin/ruby

choice=gets.strip
if(choice=='debit')
  choice=1
elsif(choice=='credit')
  choice=-1
else
  raise "wrong choice #{choice}"
end

trade_price=gets.gsub('price','').strip.to_f
expected_profit=choice*gets.gsub('% profit', '').strip.to_f/100
no_of_contracts=gets.gsub('contracts', '').strip.to_f
commission=gets.gsub('comission', '').strip.to_f


puts "expected_profit: #{expected_profit*100}%"
puts "trade_price: #{trade_price}"
puts "commission: #{commission}"
puts "no_of_contracts: #{no_of_contracts}"

total_price=(trade_price*no_of_contracts*100)+(commission*choice)
puts "total_price: #{total_price}"

with_profit=(total_price)+(total_price*expected_profit) 
puts "with profit: #{with_profit}"

puts with_profit / (100 * no_of_contracts)
