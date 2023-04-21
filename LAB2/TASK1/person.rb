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


