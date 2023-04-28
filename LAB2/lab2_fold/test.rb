require_relative 'student_short'
require_relative 'data_list_student_short'

student_short_ex = StudentShort.new("Гордов", id: 1, git: "sultangg505")
student_short_ex2 = StudentShort.new("Гордова", id: 2, git: "505sultangg")
list = DataListStudentShort.new([student_short_ex, student_short_ex2])

puts list.get_data