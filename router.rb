class Router
  def initialize(controller, view)
    @controller = controller
    @view = view
    @running = true
  end

  def run
    print `clear`
    while @running
      @view.title
      display_tasks
      puts ""
      print "> "
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  private

  def exit
    @running = false
  end

  def route_action(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.adopt
    when 3 then @controller.play
    when 4 then exit
    else
      @view.error
    end
  end

  def display_tasks
    puts "  -----------------------"
    puts "  What do you want to do?"
    puts "  -----------------------"
    puts ""
    puts "  1 - List all your dogs"
    puts "  2 - Adopt a new dog"
    puts "  3 - Play with a dog"
    puts "  4 - Exit"
  end
end
