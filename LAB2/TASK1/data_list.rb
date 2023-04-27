class Data_List
  attr_reader :data, :selected

  def initialize(data)
    @data = data
    @selected = []
  end

  def select(number)
    @selected << number unless @selected.include?(number)
  end

  def get_selected
    @selected
  end
end