class Student
  attr_accessor :id, :last_name, :first_name, :patronymic, :phone, :telegram, :email, :github

  def initialize(last_name:, first_name:, surname:, id: nil, phone: nil, telegram: nil, email: nil, github: nil)
    @id = id
    @last_name = last_name
    @first_name = first_name
    @surname = @surname
    @phone = phone
    @telegram = telegram
    @email = email
    @github = github
  end

  def to_s
    "ID: #{@id}\nФамилия: #{@last_name}\nИмя: #{@first_name}\nОтчество: #{@surname}\nТелефон: #{@phone}\nТелеграм: #{@telegram}\nПочта: #{@email}\nGitHub: #{@github}"
  end
end

