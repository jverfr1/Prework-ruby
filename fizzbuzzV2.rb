  
1.upto(100).each do |i|
  result = ""
  check = Proc.new do 
    if (i - 10 > -1 ) && ( i -10 <= 9 )
	  result << "Bang"
    end
  end
	
  if ( i % 3 == 0 && i % 5 == 0)
	result << "FizzBuzz"
	check.call
  elsif i % 3 == 0
	result << "Fizz"
	check.call
  elsif i % 5 == 0
	result << "Buzz"
    check.call
  elsif i == 1
    result << "Bang"
  elsif (i - 10 > -1 ) && ( i -10 <= 9 )
    result << "Bang"
  else
    result << "#{i}"
  end
    
  puts result

end
    puts "..................................................................."