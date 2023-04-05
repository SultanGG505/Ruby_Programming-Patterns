require_relative 'student.rb'

# Создаем несколько объектов класса Student
student1 = Student.new('Гослинг', 'Райан', 'Драйвович', '1', '112', '@drive', 'endOfDrive@yandex.ru', 'driver')
student2 = Student.new('Гордов', 'Султан', 'Николаевич', '2', '89184741586', '@sultan', 'sultangordovg@gmail.com', 'sultanGG505')
student3 = Student.new('Иванов', 'Иван', 'Иванович', '3')

# Выводим информацию о каждом студенте
puts "Студент 1->", student1.to_s

puts "Студент 2->", student2.to_s

puts "Студент 3->", student3.to_s

