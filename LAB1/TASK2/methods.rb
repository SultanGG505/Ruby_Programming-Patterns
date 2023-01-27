# вариант 3
# метод 1, найти максимальный простой делитель числа
# метод 2, найти произведение цифр числа, не делящихся на 5
# метод 3, Найти НОД максимального нечетного непростого делителя
# числа и произведения цифр данного числа.

#################################################################################

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

#################################################################################

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

#################################################################################

def NOD(a,b)
    while a!=b
        if a > b
            a -= b
        else b -= a    
        end
    end
    return a
end

def max_and_Not_simple_Nechet_del(num)
    max = -1
    for x in 1..num        
        if simple(x) == false and x > max and num % x == 0 and x % 2 != 0
            max = x
        end 
    end
    if max == -1
        return "У числа нет непростого делителя"
    else
        return max
    end
end

def multOfNumbersOfNum(num)
    res = 1
    while num != 0
        k = num % 10        
        res *= k        
        num /= 10
    end
    return res
end

#################################################################################

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

def method3()
    puts "Введите число для поиска его НОД максимального нечетного непростого делителя
    числа и произведения цифр данного числа."
    n = gets.to_i
    puts sprintf("Введённое число, %s", n)
    a = max_and_Not_simple_Nechet_del(n)
    b = multOfNumbersOfNum(n)
    nod = NOD(a,b)
    puts sprintf("Максимальный нечетный непростой делитель для введённого числа: %s", a)
    puts sprintf("Произведение цифр данного числа: %s", b)
    puts sprintf("Нод двух указанных ранее величин: %s", nod)
end    

#################################################################################

method3

