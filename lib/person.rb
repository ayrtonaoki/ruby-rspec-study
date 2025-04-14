class Person
  attr_accessor :name, :age, :height

  def initialize(name, age, height = 1.5)
    @name = name
    @age = age
    @height = height
  end

  def say_hi(name)
    "Hi #{name}, my name is #{@name} and I have #{age} years old"
  end

  def divide_numbers(first_number, second_number)
    first_number / second_number
  end

  def height_grow
    @height = @height + rand(0.1..0.5)
  end

  def birthday
    @age += 1
  end
end
