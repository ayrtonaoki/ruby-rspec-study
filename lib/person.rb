class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def say_hi(name)
    "Hi #{name}, my name is #{@name} and I have #{age} years old"
  end
end
