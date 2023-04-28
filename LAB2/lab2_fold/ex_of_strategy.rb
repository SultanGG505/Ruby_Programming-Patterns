# Паттерн "Стратегия" (Strategy) относится к поведенческим паттернам проектирования и
# позволяет выбирать из нескольких вариантов реализацию определенного поведения или
# алгоритма в зависимости от условий выполнения программы.
# Это позволяет разделить алгоритм на отдельные части и
# использовать их независимо друг от друга.
# Определяем базовый класс для стратегий
#
class Strategy
  def execute(a, b)
    raise NotImplementedError, 'Метод execute должен быть переопределен в подклассах'
  end
end

# Определяем конкретную стратегию для сложения чисел
class AdditionStrategy < Strategy
  def execute(a, b)
    a + b
  end
end

# Определяем конкретную стратегию для умножения чисел
class MultiplicationStrategy < Strategy
  def execute(a, b)
    a * b
  end
end

# Определяем контекст, который использует стратегии для выполнения определенного алгоритма
class Context
  def initialize(strategy)
    @strategy = strategy
  end

  def execute_strategy(a, b)
    @strategy.execute(a, b)
  end
end

# Пример использования паттерна "Стратегия"
addition_strategy = AdditionStrategy.new
multiplication_strategy = MultiplicationStrategy.new

context = Context.new(addition_strategy)
result = context.execute_strategy(3, 4)
puts "Результат сложения: #{result}" # Выводит "Результат сложения: 7"

context = Context.new(multiplication_strategy)
result = context.execute_strategy(3, 4)
puts "Результат умножения: #{result}" # Выводит "Результат умножения: 12"