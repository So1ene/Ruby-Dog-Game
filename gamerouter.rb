class Gamerouter
  def initialize(controller, view, dog)
    @controller = controller
    @view = view
    @dog = dog
    @running = true
  end

  def run
    print `clear`
    puts "                                _"
    puts "                             ,:'/   _..._"
    puts "                            // ( `\"\"-.._.'"
    puts "                            \\| /    6\___"
    puts "                            |     6      4"
    puts "                            |            /"
    puts "                            \_     '-.--'"
    puts "                            (_'---'`)"
    puts "                            / `'---`()"
    puts "         ,              .'`          |"
    puts "        )\\        _.-'               ;"
    puts "        / |   _ .'`   _              /"
    puts "       /` /  .'       '.          , |"
    puts "      /  /   /           \\   ;   | |"
    puts "     |  \\   |            |  .|   | |"
    puts "      \\  `\"|            /.-'|   | |"
    puts "        '-..-\\      "
    puts ""
    while @running
      @view.title
      display_games
      puts ""
      print "> "
      game = gets.chomp.to_i
      print `clear`
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
    when 5 then @controller.sleep(@dog)
    when 6 then @controller.wakeup(@dog)
    when 7 then @controller.grr(@dog)
    when 8 then menu
    else
      @view.error
    end
  end

  def display_games
    puts "  ----------------------"
    puts "     Play with #{@dog.name}!"
    puts "  ----------------------"
    puts ""
    puts "  1 - Info"
    puts "  2 - Sit"
    puts "  3 - Pet"
    puts "  4 - Speak"
    puts "  5 - Sleep"
    puts "  6 - Wake up"
    puts "  7 - grr"
    puts "  8 - Back to menu"
  end
end
