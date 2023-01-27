# вариант 3
# метод 1, найти максимальный простой делитель числа
# метод 2, найти произведение цифр числа, не делящихся на 5
# метод 3, 

def simple(num)
    return false if num <= 1
    2.upto(Math.sqrt(num).to_i).each  {|i| return false if num % i == 0}
    # Math.sqrt(num).to_i.downto(2).each {|i| return false if num % i == 0}
    true
end

def max_and_simple_del(num)
    max = -1
    for x in 0..num        
        if simple(x) == true and x > max and num % x == 0
            max = x
        end 
    end
    if max == -1
        return "У числа нет простого делителя"
    else
        return max
    end
end

def multOfNotDivisibleBy5(num)
    res = 1
    while num != 0
        k = num % 10
        if k % 5 != 0
            res *= k
        end
        num /= 10
    end
    return res
end

def method1()
    puts "Введите число для поиска его максимального простого делителя"
    n = gets.to_i
    puts sprintf("Введённое число, %s", n)
    puts sprintf("Результат для введённого числа: %s", max_and_simple_del(n))
end 

def method2()
    puts "Введите число для поиска его произведения цифр, не делящихся на 5"
    n = gets.to_i
    puts sprintf("Введённое число, %s", n)
    puts sprintf("Результат для введённого числа: %s", multOfNotDivisibleBy5(n))
end 

method2
