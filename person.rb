class Person
  # attr_reader :name
  # attr_writer :name

  # Task 5: Use attr_accessor for both reader and writer
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # Task 1: Manual getter
  # def name
  #   @name
  # end

  # Task 3: Manual setter
  # def name=(new_name)
  #   @name = new_name
  # end
end

p = Person.new('L. Ron')
puts p.name
p.name = "New Name"
puts p.name  # Outputs: New Name