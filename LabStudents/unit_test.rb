require 'minitest/autorun'
require './LabStudents/models/student'
require 'json'

class StudentTest < Minitest::Test
  def setup
    @student = Student.new(
      'Иванов',
      'Иван',
      'Иванович',
      id: 10,
      phone: '79995554433',
      telegram: 'ivanushka',
      email: 'ivan@gmail.com',
      git: 'sbeugg505'
    )
  end

  def teardown
    # Do nothing
  end

  def test_student_init_all_params_correct
    assert @student.last_name == 'Иванов'
    assert @student.first_name == 'Иван'
    assert @student.father_name == 'Иванович'
    assert @student.id == 10
    assert @student.phone == '79995554433'
    assert @student.telegram == 'ivanushka'
    assert @student.email == 'ivan@gmail.com'
    assert @student.git == 'sbeugg505'
  end

  def test_student_empty_options
    Student.new('Иванов', 'Иван', 'Иванович')
  end

  def test_student_short_contact
    short_contact = @student.short_contact

    assert short_contact[:type] == :telegram
    assert short_contact[:value] == 'ivanushka'
  end

  def test_student_has_contacts
    assert @student.has_contacts? == true
  end

  def test_student_has_git
    assert @student.has_git? == true
  end

  def test_student_valid
    assert @student.valid? == true
  end

  def test_student_set_contacts
    stud = Student.new('Иванов', 'Иван', 'Иванович')
    stud.set_contacts(phone: '79998887766', telegram: 'ivanchik', email: 'ivan@gmail.com')

    assert stud.phone == '79998887766'
    assert stud.telegram == 'ivanchik'
    assert stud.email == 'ivan@gmail.com'
  end

  def test_student_last_name_and_initials
    assert @student.last_name_and_initials == 'Иванов И. И.'
  end

end