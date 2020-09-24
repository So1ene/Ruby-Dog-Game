# frozen_string_literal: true

require 'csv'
require_relative 'dog'

# Database
class Repository
  def initialize(csv_file)
    @csv_file = csv_file
    @csv_options = { col_sep: ',', quote_char: '"' }
    @dogs = []

    CSV.foreach(@csv_file) do |row|
      dog = Dog.new({ name: row[0], age: row[1],
                      breed: row[2], color: row[3],
                      gender: row[4], size: row[5] })
      dog.sleep! if row[6] == 'true'
      @dogs << dog
    end
  end

  def all
    @dogs
  end

  def adopt_dog(dog)
    @dogs << dog
    CSV.open(@csv_file, 'ab', @csv_options) do |csv|
      csv << [dog.name, dog.age, dog.breed, dog.color,
              dog.gender, dog.size, dog.sleeping?]
    end
  end

  def find_dog(dog_index)
    @dogs[dog_index]
  end

  def save_file
    CSV.open(@csv_file, 'wb', @csv_options) do |csv|
      @dogs.each do |dog|
        csv << [dog.name, dog.age, dog.breed, dog.color,
                dog.gender, dog.size, dog.sleeping?]
      end
    end
  end
end
