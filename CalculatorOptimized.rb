def accept_int_values
  [gets, gets].map{ |s| s.chomp.to_i }
end

puts "Would you like to [+], [*], [-] or [/]?"
response = gets.chomp.to_sym

begin
	answer = accept_int_values.inject(response)
	rescue ZeroDivisionError 		
		puts 'Exception was thrown'
	rescue NoMethodError
		puts 'Undefined Method, invalid operator accepted.'
	else
		puts "The answer is: #{ answer }"
end
