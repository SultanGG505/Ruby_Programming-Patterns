require_relative 'data_table.rb'
require_relative 'data_list.rb'
require_relative 'student.rb'
require_relative 'student_short'
require_relative 'person'

# # Создаем объект класса Data_table
# table = Data_table.new([
#                          [1, 2, 3],
#                          [4, 5, 6],
#                          [7, 8, 9]
#                        ])
#
# # Получаем элементы таблицы по номеру строки и столбца
# puts table[0, 0] # => 1
# puts table[1, 2] # => 6
#
# # Получаем количество столбцов и строк в таблице
# puts table.num_columns # => 3
# puts table.num_rows # => 3

data_list = Data_list.new
data_list.add(Student.new(1, "Doe", "John", "Adam", git: "johndoe", email: "johndoe@example.com"))
data_list.add(Student.new(2, "Smith", "Jane", "Marie", phone: "123-456-7890", telegram: "@janesmith"))
data_list.select(1)
puts data_list.get_selected #=> [1]
puts data_list.get_names #=> ["last_name", "first_name", "paternal_name", "phone", "git", "telegram", "email"]
puts data_list.get_data #=> [["№", "last_name", "first_name", "paternal_name", "phone", "git", "telegram", "email"], [1, "Doe", "John", "Adam", nil, "johndoe", nil, "johndoe@example.com"], [2, "Smith", "Jane", "Marie", "123-456-7890", nil, "@janesmith", nil]]
