class StudentShort
  # стандартные геттеры и сеттеры для класса
  attr_reader :id, :git, :contact, :last_name, :initials
  #конструктор, принимающий аргументы класса student
  def initialize(student)
    @id = student.id
    @last_name = student.last_name
    @initials = "#{student.first_name[0]}. #{student.paternal_name[0]}."
    @git = student.git unless student.git.nil?
    @contact = student.contact
  end

  #фамилия и инициалы
  def last_name_and_initials
    "#{last_name} #{initials}"
  end

  # метод возвращающий представление объекта в виде строки
  def to_s
    result = last_name_and_initials
    result += " id= #{id} " unless id.nil?
    result += contact unless contact.nil?
    result
  end

  # метод проверяющий наличие гита
  def git?
    !git.nil?
  end

  # метод проверяющий наличие контакта
  def contact?
    !contact.nil?
  end

  def validate
    git? && contact?
  end

end

