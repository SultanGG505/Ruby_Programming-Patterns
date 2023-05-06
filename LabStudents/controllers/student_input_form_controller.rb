# frozen_string_literal: true

require 'win32api'

class StudentInputFormController
  def initialize(view, existing_student)
    @view = view
    @existing_student = existing_student
  end



  def save_student(student)
    if @existing_student.nil?
      @student_rep.add_student(student)
    else
      @student_rep.replace_student(@existing_student[:id], student)
    end
  end


end
