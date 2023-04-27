require_relative 'person.rb'

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


