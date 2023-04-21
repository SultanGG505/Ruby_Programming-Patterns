require_relative 'person.rb'

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
