# frozen_string_literal: true

# Game Router
class Gamerouter
  def initialize(controller, view, dog)
    @controller = controller
    @view = view
    @dog = dog
    @running = true
  end

  def run
    @view.dog
    while @running
      @view.title
      display_games
      display_games_part_2
      print "\n> "
      game = gets.chomp.to_i
      clear
      play(game)
    end
  end

  private

  def menu
    @running = false
  end

  def play(game)
    case game
    when 1 then @controller.info(@dog)
    when 2 then @controller.sit(@dog)
    when 3 then @controller.pet(@dog)
    when 4 then @controller.speak(@dog)
    when 5..8 then play_part_2(game)
    else
      @view.error
    end
  end

  def play_part_2(game)
    case game
    when 5 then @controller.sleep(@dog)
    when 6 then @controller.wakeup(@dog)
    when 7 then @controller.grr(@dog)
    when 8 then menu
    end
  end

  def display_games
    puts '  ----------------------'
    puts "     Play with #{@dog.name}!"
    puts '  ----------------------'
    puts ''
    puts '  1 - Info'
    puts '  2 - Sit'
    puts '  3 - Pet'
    puts '  4 - Speak'
  end

  def display_games_part_2
    puts '  5 - Sleep'
    puts '  6 - Wake up'
    puts '  7 - grr'
    puts '  8 - Back to menu'
  end

  def clear
    if Gem.win_platform?
      system 'cls'
    else
      system 'clear'
    end
    puts "-------------"
    puts ""
    puts ""
  end
end
