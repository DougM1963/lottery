def lottery() 
	$number_array = (1..99).to_a
end

def winning_numbers()
	lottery()
	$winning_numbers = $number_array.sample(6).sort
end
# p $number_array = (1..99).to_a
# p winning_numbers = number_array.sample(6).sort