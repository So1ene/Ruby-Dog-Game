# frozen_string_literal: true

# Doggoooo
class Dog
  attr_reader :color, :breed, :age, :name, :gender, :size

  def initialize(hash = { name: unknown, age: unknown,
                          breed: unknown, color: unknown,
                          gender: unknown, size: unknown })
    @name = hash[:name]
    @age = hash[:age]
    @breed = hash[:breed]
    @color = hash[:color]
    @gender = hash[:gender]
    @size = hash[:size]
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
