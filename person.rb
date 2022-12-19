# Class: Person
class Person
  # initialize method

  def intialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
  # getter method

  attr_reader :id
  attr_accessor :name, :age

  # Public methods

  def can_use_services?
    is_of_age? || @parent_permission
  end
  # Private methods

  private

  def of_age?
    @age >= 18
  end
end
