class Student
  attr_accessor :id, :last_name, :first_name, :patronymic, :phone, :telegram, :email, :github

  PHONE_REGEX = /\A(\+7|8)\d{10}\z/
  TELEGRAM_REGEX = /^@[A-Za-z0-9\-_]+$/
  EMAIL_REGEX = /^[A-Za-z0-9\-_]+@[A-Za-z]+\.([A-Za-z]+\.)*[A-Za-z]+$/

  def initialize(last_name:, first_name:, patronymic:, id: nil, phone: nil, telegram: nil, email: nil, github: nil)
    @id = id
    @last_name = last_name
    @first_name = first_name
    @patronymic = patronymic
    @phone = phone
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


  def telegram=(value)
    if value && !value.match(TELEGRAM_REGEX)
      raise ArgumentError.new("Неправильный формат телеграма: #{value}")
    end
    @telegram = value
  end

  def email=(value)
    if value && !value.match(EMAIL_REGEX)
      raise ArgumentError.new("Неправильный формат почты: #{value}")
    end
    @email = value
  end
  def to_s
    "ID: #{@id}\nФамилия: #{@last_name}\nИмя: #{@first_name}\nОтчество: #{@patronymic}\nТелефон: #{@phone}\nТелеграм: #{@telegram}\nПочта: #{@email}\nGitHub: #{@github}"
  end
end