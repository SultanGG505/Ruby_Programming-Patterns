require_relative 'data_table.rb'

# Создаем объект класса Data_table
table = Data_table.new([
                         [1, 2, 3],
                         [4, 5, 6],
                         [7, 8, 9]
                       ])

# Получаем элементы таблицы по номеру строки и столбца
puts table[0, 0] # => 1
puts table[1, 2] # => 6

# Получаем количество столбцов и строк в таблице
puts table.num_columns # => 3
puts table.num_rows # => 3

