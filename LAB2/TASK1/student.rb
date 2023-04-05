
class Student
  attr_accessor :id, :last_name, :first_name, :patronymic, :phone, :telegram, :email, :github

  def initialize(last_name, first_name, patronymic, id=nil, phone=nil, telegram=nil, email=nil, github=nil)
    @id = id
    @last_name = last_name
    @first_name = first_name
    @patronymic = patronymic
    @phone = phone
    @telegram = telegram
    @email = email
    @github = github
  end
end