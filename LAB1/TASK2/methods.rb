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

# метод 1, найти максимальный простой делитель числа
def maxAndSimpleDel_Task(num)
    res = -1
    num.downto(1).each { |div| res = div if simple(div) and div > res and num % div == 0}
    if res == -1
        return "у числа нет делителя"
    else 
        return res
    end
end

#################################################################################

# метод 2, найти произведение цифр числа, не делящихся на 5
def multOfNotDivisibleByFive(num)
    res, count = 1, 0
    num.digits.each { 
        |dig| 
        if dig % 5 != 0
            res *= dig 
            count+=1 
        end
    }
    if count == 0
        return "у числа нет подходящих цифр"
    else 
        return res
    end
end

#################################################################################

def nod_Task(num)
    maxDel = -1
    mult = 1
    num.downto(1).each { 
        |div| 
        if div > maxDel and !simple(div) and div % 2 != 0 and num % div == 0 and div != 0
            maxDel = div            
        end        
    }
    num.digits.each { |dig| mult *= dig}
   
    puts "Максимальный непростой нечётный делитель числа, #{maxDel}"
    puts "Произведение цифр данного числа, #{mult}"
    if mult == 0
        return "\nНевозможно найти нод т.к произведение цифр числа равно нулю"
    end
    while maxDel!=mult
        if maxDel > mult
            maxDel -= mult
        else mult -= maxDel    
        end
    end
    return maxDel
end

#################################################################################

system "color a"
puts "Введите число для обработки"
number = gets.to_i

puts "метод 1, найти максимальный простой делитель числа: #{maxAndSimpleDel_Task(number)}"
puts "метод 2, найти произведение цифр числа, не делящихся на 5: #{multOfNotDivisibleByFive(number)}"
puts "метод 3, Найти НОД максимального нечетного непростого делителя\n числа и произведения цифр данного числа: #{nod_Task(number)}"

