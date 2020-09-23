require_relative 'dogrepository'
require_relative 'view'
require_relative 'dog'
require_relative 'gamerouter'

class Controller
  def initialize(repository)
    @repo = repository
    @view = View.new
  end



    # @controller.list
    # @controller.adopt
    # @controller.play
    # @controller.fast_forward
    # @controller.info(@dog)
    # @controller.pet(@dog)
    # @controller.sit(@dog)
    # @controller.speak(@dog)
    # @controller.sleep(@dog)
    # @controller.wakeup(@dog)
    # @controller.grr(@dog)

  def list
    @view.list(@repo.all)
  end

  def adopt
    name = @view.ask_for("name").capitalize
    age = @view.ask_for("age").to_i
    breed = @view.ask_for("breed").capitalize
    color = @view.ask_for("color").capitalize
    gender = @view.ask_for("gender").capitalize
    size = @view.ask_for("size (in cm)").to_i
    dog = Dog.new(name, age, breed, color, gender, size)
    @repo.adopt_dog(dog)
  end

  def play
    @view.list(@repo.all)
    index = @view.ask_for_index
    return @view.error if @repo.find_dog(index).nil?
    dog = @repo.find_dog(index)
    gamerouter = Gamerouter.new(self, @view, dog)
    gamerouter.run
  end

  def info(dog)
    @view.info(dog)
  end

  def sit(dog)
    if dog.gender.downcase == "female"
      gender = "girl"
    elsif dog.gender.downcase == "male"
      gender = "boy"
    else
      gender = "dog"
    end
    if dog.sleeping?
      @view.will_not(dog.name, "sit")
    else
      @view.sitting(dog.name, gender)
    end
  end

  def grr(dog)
    if dog.sleeping?
      @view.will_not(dog.name, "grr")
    else
      @view.grr(dog.name)
    end
  end

  def pet(dog)
    if dog.gender.downcase == "female"
      gender = "girl"
    elsif dog.gender.downcase == "male"
      gender = "boy"
    else
      gender = "dog"
    end
    if dog.sleeping?
      @view.dreaming(dog.name, gender)
    else
      @view.patting(dog.name, gender)
    end
  end

  def speak(dog)
    if dog.sleeping?
      @view.will_not(dog.name, "speak")
    else
      @view.speaking(dog.name)
    end
  end

  def sleep(dog)
    @view.sleep(dog)
    dog.sleep!
    @repo.save_file
  end

  def wakeup(dog)
    @view.wakeup(dog)
    dog.wakeup!
    @repo.save_file
  end
end
