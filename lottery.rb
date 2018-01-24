def lottery() 
	$number_array = (1..99).to_a
end

def winning_numbers()
		$winning_numbers = $number_array.sample(6).sort
	
end
