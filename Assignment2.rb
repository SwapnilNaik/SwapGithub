puts 'Enter the amount you have : '
rupee = gets.chomp.to_i
puts 'Enter the dish'
dish = gets.chomp	
hash	 = {
	:Box8 => ['Rajma, 30','Vada Pav, 50','Dal, 20'],
        :Locavore => ['Dal, 10','Vada Pav, 30','Sabji, 40'],
        :Flavours => ['Ice cream, 10','Sandwich, 20','Burger, 30','Vada Pav, 30']
      }
resultset = Array.new
hash.keys.each do |f|
arr = hash[f]
for k in arr
  a=k.split(',')
  if a.last.to_i <= rupee && a.first == dish
    resultset << f
  end
end
end

puts resultset

 
