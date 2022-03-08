require_relative './person_class_obj'

class Teacher < Person
  attr_accessor :specialization

  def can_use_services?
    true
  end
end
