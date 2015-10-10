array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337,
     446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]
puts '-------------------------------------'

# узнать количество элементов в массиве
puts 'array size'
puts ''
puts array.size
puts '-------------------------------------'

# перевернуть массив
puts 'revers array'
puts ''
puts array.reverse.join(',')
puts '-------------------------------------'

# найти наибольшее число
puts 'array max value'
puts ''
puts array.max
puts '-------------------------------------'

# найти наименьшее число
puts 'array min value'
puts ''
puts array.min
puts '-------------------------------------'

# отсортировать от меньшего к большему
puts 'sort from min to max'
puts ''
puts array.sort.join(',')
puts '-------------------------------------'

# отсортировать от большего к меньшему
puts 'sort from max to min'
puts ''
puts array.sort { |x,y| y <=> x }.join(',')
puts '-------------------------------------'

# удалить все нечетные числа
puts 'delete all odd numbers'
puts ''
puts array.select { |a| a%2 == 0 }.join(',')
puts '-------------------------------------'

# оставить только те числа, которые без остатка делятся на 3
puts 'leave only those which are divided into 3'
puts ''
puts array.select { |a| a%3 == 0 }.join(',')
puts '-------------------------------------'

# удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов)
puts 'delete repeats from array'
puts ''
puts array.uniq.sort.join(',')
puts '-------------------------------------'

# разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого
puts 'divide to 10, result in float'
puts ''
puts array.map{ |i| i.to_f / 10 }.join(',')
puts '-------------------------------------'

# получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве
puts 'alphabet array'
puts ''
array_2 = Array.new
array_2[1..26] = ('a'..'z').to_a
alphabet = Array.new
array.each do |i|
  if i <= (array_2.size - 1)
    alphabet << array_2.values_at(i)
  end
end
puts alphabet.join(',')
puts '-------------------------------------'

# поменять местами минимальный и максимальный элементы массива
puts 'change max and min values'
puts ''
array_3 = Array.new(array)
min_index = array_3.index(array_3.max)
max_index = array_3.index(array_3.min)
max = array_3.max
array_3[min_index] = array_3[max_index]
array_3[max_index] = max
puts array_3.join(',')
puts '-------------------------------------'

# найти элементы, которые находятся перед минимальным числом в массиве
puts 'find elements before min value'
puts ''
array_4 = array.index(array.min) - 1
puts array[0..array_4].join(',')
puts '-------------------------------------'

# необходимо найти три наименьших элемента
puts 'find 3 min values'
puts ''
puts array.sort.uniq[0..2].join(',')