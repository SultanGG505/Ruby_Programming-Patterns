# Шаблон(Template) - это паттерн проектирования, который позволяет определить скелет
# алгоритма в базовом классе, но реализует конкретные шаги в дочерних классах. 
# То есть, данный паттерн задаёт структуру алгоритма, но позволяет подклассам переопределять
# определенные шаги, не меняя при этом структуру алгоритма в целом.

# Рассмотрим пример. Предположим, у нас есть базовый класс 'OrderProcessor', который определяет
# скелет алгоритма для обработки заказов. Он содержит методы 'process_order' и
# 'calcucate_total_price', которые могут быть переопределены дочерними классами.

class OrderProcessor
  def process_order
    select_products
    calculate_total_price
    create_invoice
    send_confirmation_email
  end

  def select_products
    raise NotImplementedError, 'необходима реализация в другом классе'
  end

  def calculate_total_price
    raise NotImplementedError, 'необходима реализация в другом классе'
  end


  def create_invoice
    puts 'Накладная создана'
  end

  def send_confirmation_email
    puts 'Письмо-подтверждение создано'
  end
end

class OnlineOrderProcessor < OrderProcessor
  def select_products
    puts 'Selecting products online.'
  end

  def calculate_total_price
    puts 'Calculating total price online.'
  end
end

online_order = OnlineOrderProcessor.new
online_order.process_order
