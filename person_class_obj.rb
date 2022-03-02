require_relative './corrector'

class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, parent_permission: true, name: 'Unknown')
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new()
  end

  def validate_name(name)
    @name = @corrector.correct_name(name)
  end

  def of_age?
    @age >= 18
  end

  private :of_age?

  def can_use_services?
    of_age? && @parent_permission
  end

  public :can_use_services?
end
