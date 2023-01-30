def minArr(arr)
    min = arr.min
    return min
end

def firstPositiv(arr)
    for i in 0..arr.length
        return i if arr[i].to_i > 0
    end
    return -1
end

if ARGV.count < 2
    puts "нет аргументов"
    return
end

method = ARGV[0]
path = ARGV[1]

file = File.open(path)
array = file.readline.split(' ').map(&:to_i)

puts "Массив, #{array}\n"
case method
when "1"
    puts "минимальный элемент: #{minArr(array)}"
when "2"
    puts "номер первого положительного элемента: #{firstPositiv(array)}"
else 
    puts "такого метода нет"
    puts "минимальный элемент: #{minArr(array)}"
    puts "номер первого положительного элемента: #{firstPositiv(array)}"
end