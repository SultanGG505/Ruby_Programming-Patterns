# 1.3
# Дан целочисленный массив и натуральный индекс (число, меньшее
# размера массива). Необходимо определить является ли элемент по
# указанному индексу глобальным максимумом.

# 1.15 Дан целочисленный массив и натуральный индекс (число, меньшее
# размера массива). Необходимо определить является ли элемент по
# указанному индексу локальным минимумом.

# 1.27 Дан целочисленный массив. Необходимо осуществить циклический
# сдвиг элементов массива влево на одну позицию.

# 1.39 Дан целочисленный массив. Необходимо вывести вначале его
# элементы с четными индексами, а затем - с нечетными.

# 1.51. Для введенного списка построить два списка L1 и L2, где элементы L1
# это неповторяющиеся элементы исходного списка, а элемент списка L2 с
# номером i показывает, сколько раз элемент списка L1 с таким номером
# повторяется в исходном.

def globMax(arr, index)
  if arr[index] == arr.max
    return "да"
  else
    return "нет"
  end
end

def globMin(arr, index)
  if arr[index].nil? == true
    return "такого индекса нет"
  end
  if arr[index + 1].nil? == false and arr[index - 1].nil? == false and arr[index] < arr[index + 1] and arr[index - 1] > arr[index]
    return "да"
  elsif arr[index + 1].nil? == true and arr[index - 1] > arr[index]
    return "да"
  elsif arr[index - 1].nil? == false and arr[index] < arr[index + 1]
    return "да"
  else
    return "нет"
  end
end

def rotateLeftByOnePos(arr)
  arr.rotate(1)
end

def firstEvenAfterNotEven(arr)
  # odd нечётный
  # arr.filter.with_index { |x,i| i.odd? }
  # arr.filter.with_index { |x,i| !i.odd? }
  arr.partition.with_index { |c, i| i.even? }
end

# 1.51. Для введенного списка построить два списка L1 и L2, где элементы L1
# это неповторяющиеся элементы исходного списка, а элемент списка L2 с
# номером i показывает, сколько раз элемент списка L1 с таким номером
# повторяется в исходном.
def unigElemsAndCount(arr)
  l1 = arr.uniq
  l2 = l1.clone
  l2.collect!.with_index { |x, i| x = arr.count(l2[i]) }
  return arr.inspect, l1.inspect, l2.inspect
end

# arr = [4,6,1,7,3,5,6,1,2,4,3]
puts "Введите массив для обработки"
arr = gets.chomp.split(' ').map(&:to_i)
puts "Введённый массив: #{arr.inspect}"

puts "Какую задачу решать?

1 - globMax
2 - globMin
3 - rotateLeftByOnePos
4 - firstEvenAfterNotEven
5 - unigElemsAndCount"
n = gets.chomp.to_i
case n
when 1
  puts "Введите индекс"
  ind = gets.chomp.to_i
  puts "Введённый индекс: #{ind}"
  puts "Результат: #{globMax(arr, ind)}"
when 2
  puts "Введите индекс"
  ind = gets.chomp.to_i
  puts "Введённый индекс: #{ind}"
  puts "Результат: #{globMin(arr, ind)}"
when 3
  puts "Результат: #{rotateLeftByOnePos(arr)}"
when 4
  puts "Результат: #{firstEvenAfterNotEven(arr)}"
when 5
  puts "Результат: #{unigElemsAndCount(arr)}"
end