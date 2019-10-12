def luhn(number)
   split_numbers = number.to_s.reverse.split('').collect{ |n|n.to_i } 
   p split_numbers

   evens = []
   odds = []

   split_numbers.each_with_index do |num,index|
   	if index %2 ==0 
   		evens.push(num)
   	else
   		odds.push(num)
   	end
   end
   
  odds = odds.map do |num|
    if (num * 2) > 9
      (num * 2).to_s.split.map(&:to_i).inject(:+) - 9
    else
      (num * 2)
    end
  end

   results = evens+odds
   p results
   results = results.inject(:+)
   p results
   return results %10 ==0

end

p luhn(377681478627336)
