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

# arr = [4,6,1,7,3]
# index = 0
# puts globMin(arr,index)
# index = 1
# puts globMin(arr,index)
# index = 2
# puts globMin(arr,index)
# index = 3
# puts globMin(arr,index)
# index = 4
# puts globMin(arr,index)
# index = 5
# puts globMin(arr,index)