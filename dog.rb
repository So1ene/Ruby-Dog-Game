class Dog
  attr_reader :color, :breed, :age, :name, :gender, :size

  def initialize(name, age, breed, color, gender, size)
    @name = name
    @age = age
    @breed = breed
    @color = color
    @gender = gender
    @size = size
    @sleeping = false
  end

  def sleeping?
    @sleeping
  end

  def sleep!
    @sleeping = true
  end

  def wakeup!
    @sleeping = false
  end

end
