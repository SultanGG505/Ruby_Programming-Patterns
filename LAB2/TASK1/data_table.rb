class Data_table
  def initialize(data)
    @data = data
  end

  def [](row, col)
    @data[row][col]
  end

  def num_columns
    @data.first.size
  end

  def num_rows
    @data.size
  end
end
