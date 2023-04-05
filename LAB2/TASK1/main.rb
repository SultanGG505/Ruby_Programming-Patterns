require_relative 'student.rb'

# Создаем несколько объектов класса Student
#student1 = Student.new(last_name: 'Гослинг', first_name: 'Райан', patronymic: 'Драйвович', id: '1', phone: '112', telegram: '@drive', email: 'endOfDrive@yandex.ru', github: 'driver')
student2 = Student.new(last_name: 'Гордов', first_name: 'Султан', patronymic: 'Николаевич', id: '2', phone: '89184741586', telegram: '@sultan', email: 'sultangordovg@gmail.com', github: 'sultanGG505')
student3 = Student.new(last_name: 'Иванов', first_name: 'Иван', patronymic: 'Иванович', id: '3')


# Выводим информацию о каждом студенте
# puts "Студент 1->", student1.to_s

puts "Студент 2->", student2.to_s

puts "Студент 3->", student3.to_s

