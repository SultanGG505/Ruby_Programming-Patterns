class Student
  attr_reader :id, :last_name, :first_name, :patronymic, :phone, :telegram, :email, :github

  PHONE_REGEX = /\A(\+7|8)\d{10}\z/
  TELEGRAM_REGEX = /^@[A-Za-z0-9\-_]+$/
  EMAIL_REGEX = /^[A-Za-z0-9\-_]+@[A-Za-z]+\.([A-Za-z]+\.)*[A-Za-z]+$/

  def initialize(last_name:, first_name:, patronymic:, id: nil, phone: nil, telegram: nil, email: nil, github: nil)
    @id = id
    @last_name = last_name
    @first_name = first_name
    @patronymic = patronymic
    self.phone = phone
    self.telegram = telegram
    self.email = email
    @github = github
  end

  def phone=(value)
    raise ArgumentError, "Неправильный формат номера телефона: #{value}" if value && !value.match(PHONE_REGEX)

    @phone = value
  end

  def telegram=(value)
    raise ArgumentError, "Неправильный формат телеграма: #{value}" if value && !value.match(TELEGRAM_REGEX)

    @telegram = value
  end

  def email=(value)
    raise ArgumentError, "Неправильный формат почты: #{value}" if value && !value.match(EMAIL_REGEX)

    @email = value
  end

  def to_s
    "ID: #{@id}\nФамилия: #{@last_name}\nИмя: #{@first_name}\nОтчество: #{@patronymic}\nТелефон: #{@phone}\nТелеграм: #{@telegram}\nПочта: #{@email}\nGitHub: #{@github}"
  end

  def contact
    return @contact = "phone=#{phone}" unless phone.nil?
    return @contact = "telegram=#{telegram}" unless telegram.nil?
    return @contact = "email=#{email}" unless email.nil?

    nil
  end

  def set_contacts(phone: nil, telegram: nil, email: nil)
    self.phone = phone if phone
    self.telegram = telegram if telegram
    self.email = email if email
    @contact = contact
  end
end