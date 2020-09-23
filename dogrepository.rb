require 'csv'
require_relative 'dog'

class Repository
  def initialize(csv_file)
    @csv_file = csv_file
    @csv_options = { col_sep: ',', quote_char: '"' }
    @dogs = []

    CSV.foreach(@csv_file) do |row|
      dog = Dog.new(row[0], row[1], row[2], row[3], row[4], row[5])
      dog.sleep! if row[6] == "true"
      @dogs << dog
    end
  end

  def all
    @dogs
  end

  def adopt_dog(dog)
    @dogs << dog
    CSV.open(@csv_file, 'ab', @csv_options) do |csv|
      csv << [dog.name, dog.age, dog.breed, dog.color, dog.gender, dog.size, dog.sleeping?]
    end
  end

  def find_dog(dog_index)
    @dogs[dog_index]
  end

  def save_file
    CSV.open(@csv_file, 'wb', @csv_options) do |csv|
      @dogs.each do |dog|
        csv << [dog.name, dog.age, dog.breed, dog.color, dog.gender, dog.size, dog.sleeping?]
      end
    end
  end

end
