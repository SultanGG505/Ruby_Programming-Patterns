require_relative 'student.rb'

# Создаем несколько объектов класса Student
#student1 = Student.new(last_name: 'Гослинг', first_name: 'Райан', patronymic: 'Драйвович', id: '1', phone: '112', telegram: '@drive', email: 'endOfDrive@yandex.ru', github: 'driver')
student2 = Student.new('Гордов', 'Султан', 'Николаевич', id: '2', phone: '+79184741586', telegram: '@sultan', email: 'sultangordovg@gmail.com', git: '@sultanGG505')
student3 = Student.new('Иванов', 'Иван', 'Иванович', id: '3', phone: '89184741586', telegram: '@sultan')
student4 = Student.new('Иванов', 'Иван', 'Иванович', id: '3')
# Выводим информацию о каждом студенте
# puts "Студент 1->", student1.to_s

puts "Студент 2->", student2.to_s
puts student2.validate
puts "Студент 3->", student3.to_s
puts student3.validate

puts "Студент 4->", student4.to_s
puts student4.validate
student4.set_contacts(phone: '89184741586')
puts "Студент 4->", student4.to_s