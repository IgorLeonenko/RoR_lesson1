def type_word
  gets.chomp.capitalize
end

puts 'Type your name'
name = type_word

puts 'Type your patronymic'
patronymic = type_word

puts 'Type your lastname'
lastname = type_word

puts 'Hello ' + lastname + ' ' + name + ' ' + patronymic