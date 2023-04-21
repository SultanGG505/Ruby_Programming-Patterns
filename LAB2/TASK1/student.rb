class Person
  attr_reader :id, :last_name, :first_name, :paternal_name

  def initialize(id, last_name, first_name, paternal_name)
    @id = id
    @last_name = last_name
    @first_name = first_name
    @paternal_name = paternal_name
  end

  def short_name
    "#{last_name} #{first_name[0]}. #{paternal_name[0]}."
  end

  def to_s
    "#{id}, #{last_name} #{first_name} #{paternal_name}"
  end
end

class Student < Person
  attr_reader :phone, :git, :telegram, :email

  def initialize(id, last_name, first_name, paternal_name, phone: nil, git: nil, telegram: nil, email: nil)
    super(id, last_name, first_name, paternal_name)
    @phone = phone
    @git = git
    @telegram = telegram
    @email = email
  end

  def to_s
    result = super
    result += " phone=#{phone}" unless phone.nil?
    result += " git=#{git}" unless git.nil?
    result += " telegram=#{telegram}" unless telegram.nil?
    result += " email=#{email}" unless email.nil?
    result
  end

  def contact
    return "phone= #{phone}" unless phone.nil?
    return "telegram= #{telegram}" unless telegram.nil?
    return "email= #{email}" unless email.nil?
    return "git= #{git}" unless git.nil?

    nil
  end

  def getInfo
    "#{short_name}, #{contact}"
  end

  def validate
    git? && contact?
  end

  def git?
    !git.nil?
  end

  def contact?
    !email.nil? || !phone.nil? || !telegram.nil?
  end

  def set_contacts(contacts)
    self.phone = contacts[:phone] if contacts.key?(:phone)
    self.telegram = contacts[:telegram] if contacts.key?(:telegram)
    self.email = contacts[:email] if contacts.key?(:email)
  end

  private

  attr_writer :phone, :git, :telegram, :email
end

class StudentShort < Person
  attr_reader :git, :contact

  def initialize(id, name_string, git: nil, contact: nil)
    last_name, first_name, paternal_name = name_string.split(" ")
    super(id, last_name, first_name, paternal_name)
    @git = git
    @contact = contact
  end

  def to_s
    result = super
    result += " git=#{git}" unless git.nil?
    result += " contact=#{contact}" unless contact.nil?
    result
  end

  def getInfo
    "#{short_name}, #{contact}"
  end
end
