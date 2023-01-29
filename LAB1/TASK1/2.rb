system "color A" 

if ARGV.count < 1
    puts "🤡"
    return 
end
  
user = ARGV[0]
puts "Привет, #{user}!"

puts "Какой у вас любимый язык программирования?"
lang = STDIN.gets.chomp.downcase

if lang == "ruby"
    puts "Вы подлиза, нехорошо так!😃"
elsif lang == "python"
    puts "🤡🙈😤"
elsif lang == "c-sharp"
    puts "Отличный выбор!"
elsif lang == "pascal"
    puts "🤓"
else 
    puts "Скоро будет ruby👍"
end