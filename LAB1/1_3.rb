require 'open3'

puts "Введите команду для выполнения её OS, например Time или Tree"
cmd = gets.chomp()
Open3.pipeline(cmd)

puts "Теперь введите некоторый код на Ruby для выполнения самой же Ruby"
rubyCmd = gets.chomp()
File.open("LAB1/code.rb","w") do |file|
    file.write(rubyCmd)
end

cmd2 = "ruby lab1\\code.rb"
Open3.pipeline(cmd2)