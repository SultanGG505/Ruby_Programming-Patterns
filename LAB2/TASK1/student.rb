class Student
  attr_accessor :id, :last_name, :first_name, :patronymic, :phone, :telegram, :email, :github

  PHONE_REGEX = /\A(\+7|8)\d{10}\z/

  def initialize(last_name:, first_name:, patronymic:, id: nil, phone: nil, telegram: nil, email: nil, github: nil)
    @id = id
    @last_name = last_name
    @first_name = first_name
    @patronymic = patronymic
    self.phone = phone
    @telegram = telegram
    @email = email
    @github = github
  end

  def phone=(value)
    if value && !value.match(PHONE_REGEX)
      raise ArgumentError.new("Неправильный формат номера телефона: #{value}")
    end
    @phone = value
  end

  def to_s
    "ID: #{@id}\nФамилия: #{@last_name}\nИмя: #{@first_name}\nОтчество: #{@patronymic}\nТелефон: #{@phone}\nТелеграм: #{@telegram}\nПочта: #{@email}\nGitHub: #{@github}"
  end
end