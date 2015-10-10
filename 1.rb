puts 'Type a number, please:'
a = gets.chomp
puts 'Sum of numbers is: ' + a.split('').map{ |i| i.to_i }.inject{ |a,b| a + b }.to_s