require_relative 'student_short'
require_relative 'data_list_student_short'

stsh = StudentShort.new("Гордов", id: 1, git: "sultangg505")
list = DataListStudentShort.new([stsh])

puts list.get_data