# frozen_string_literal: true

require 'glimmer-dsl-libui'
require './LabStudents/controllers/student_input_form/student_input_form_controller_create'
require './LabStudents/models/student_base'
require 'win32api'
require_relative 'edit.rb'

class StudentInputForm
  include Glimmer

  def initialize(controller, edit, existing_student = nil)
    @existing_student = existing_student.to_hash unless existing_student.nil?
    @controller = controller
    @entries = {}
    @edit = edit
  end

  def on_create
    @controller.on_view_created
  end

  def create
    @root_container = window('Универ', 300, 150) {
      resizable false

      vertical_box {
        @student_form = form {
          stretchy false

          fields = [[:last_name, 'Фамилия'], [:first_name, 'Имя'], [:father_name, 'Отчество'], [:git, 'Гит'], [:telegram, 'Телеграм'], [:email, 'Почта'], [:phone, 'Телефон']]

          fields.each do |field|
            @entries[field[0]] = entry {
              label field[1]
              read_only @edit.edit(field[1])
            }
          end
        }

        button('Сохранить') {
          stretchy false

          on_clicked {
            values = @entries.transform_values { |v| v.text.force_encoding("utf-8").strip }
            values.transform_values! { |v| v.empty? ? nil : v}

            @controller.process_fields(values)
          }
        }
      }
    }
    on_create
    @root_container
  end

  def set_value(field, value)
    return unless @entries.include?(field)

    @entries[field].text = value
  end

  def make_readonly(*fields)
    fields.each do |field|
      @entries[field].read_only = true
    end
  end

  def close
    @root_container.destroy
  end
end
