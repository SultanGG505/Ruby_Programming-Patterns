
require_relative 'data_list.rb'
require_relative 'student_short.rb'

class Data_List_Student_Short < Data_List
  def initialize
    super(StudentShort)
  end

  def get_names
    super + ['Git', 'Contact']
  end

  def get_data
    data = super
    data.each_with_index do |row, index|
      student_short = @elements[index]
      row << student_short.git
      row << student_short.contact
    end
    data
  end
end
