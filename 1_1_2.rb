puts "Введите ваше имя"
name = gets.chomp()
puts "Привет, " + name + " , рады вас видеть!\nКакой у вас любимый ЯП?"
lang = gets.downcase().chomp()

if lang == "ruby"
    puts "Вы подлиза, нехорошо так!😃"
elsif lang == "python"
    puts "🤡🙈😤"
elsif lang == "c-sharp"
    puts "Отличный выбор!"
elsif lang == "pascal"
    puts "🤓"
else 
    puts "Не слышал ничего об этом языке, но хорошо, что вы его знаете👍"
end
