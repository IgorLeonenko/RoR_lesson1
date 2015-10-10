puts 'Hello! How old are you?'

years_old = gets.chomp.to_i

days_old = years_old * 365
hours_old = days_old * 24
minutes_old = hours_old * 60
seconds_old = minutes_old * 60

puts 'So you are live ' + years_old.to_s + ' years' + ' or ' + days_old.to_s + ' days' +
     ' or ' + hours_old.to_s + ' hours' + ' or ' + minutes_old.to_s + ' minutes' + ' or ' + seconds_old.to_s + ' seconds'