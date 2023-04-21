class Data_list
  attr_reader :selected_ids

  def initialize
    @data = []
    @selected_ids = []
  end

  def add(element)
    @data << element
  end

  def select(number)
    element = @data[number - 1]
    @selected_ids << element.id unless @selected_ids.include?(element.id)
  end

  def get_selected
    @selected_ids
  end

  def get_names
    return [] if @data.empty?

    @data.first.instance_variables.map do |var|
      var.to_s.delete("@") unless var == :@id
    end.compact
  end

  def get_data
    return [] if @data.empty?

    [get_names.unshift("№")] + @data.map.with_index do |element, index|
      [index + 1] + get_values(element)
    end
  end

  private

  def get_values(element)
    instance_variables = element.instance_variables.reject { |var| var == :@id }
    instance_variables.map { |var| element.instance_variable_get(var) }
  end
end
