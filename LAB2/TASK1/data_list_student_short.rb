require_relative 'data_list'
class DataListStudentShort < DataList
  public_class_method :new

  def get_names
    ["last_name_and_initials", "git", "contact"]
  end
  protected

  def table_fields(object)
    [object.last_name_and_initials, object.git, object.contact]
  end
end