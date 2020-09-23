class View
  def list(dogs)
    puts "Your dogs:"
    dogs.each_with_index do |dog, index|
      sleeping = dog.sleeping? ? " (Sleeping)" : ""
      puts ""
      puts "#{index + 1}. #{dog.name}: #{dog.age} year(s) old, #{dog.gender.downcase}, #{dog.breed.downcase} breed, #{dog.size}cm, #{dog.color.downcase}#{sleeping}"
    end
    puts ""
  end

  def info (dog)
    puts "Name: #{dog.name}"
    puts "Age: #{dog.age} year(s) old"
    puts "Gender: #{dog.gender}"
    puts "Breed: #{dog.breed}"
    puts "Size: #{dog.size}cm"
    puts "Color: #{dog.color}"
    print "Status: "
    if dog.sleeping?
      puts "Sleeping"
    else
      puts "Awake"
    end
    puts ""
  end

  def confirmation
    print `clear`
    print "."
    sleep(0.1)
    print "."
    sleep(0.1)
    print "."
    sleep(0.2)
    puts "Success!"
    sleep(1)
    print `clear`
  end

  def ask_for_index
    puts ""
    puts "Which dog? (Type its number from the list)"
    puts ""
    print "> "
    (gets.chomp.to_i - 1)
  end

  def error
    puts ""
    puts "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv"
    puts ""
    puts "/!\\ ERROR > Unknown input, please try again! <"
    puts ""
    puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    puts ""
  end

  def title
    puts ""
    puts "            --           "
    puts "       POCKET DOGGOS"
    puts "            --           "
    puts ""
  end

  def will_not(dog, action)
      puts ""
      puts ""
      puts "                            Z"
      puts "              .--~~~___   z "
      puts " :-....,-------`~~'._.' z"
      puts "  `-,,,  ,_      ;'~U'"
      puts "   _,-' ,'`-__; '--."
      puts "  (_/'~~      ''''(;"
      puts ""
      puts ""
      puts "#{dog} is asleep! He will not #{action}."
      puts ""
  end

  def sitting(dog, gender)
    puts ""
    puts "            "
    puts "     /^-^\\"
    puts "    / ^ ^ \\"
    puts "    V\\ Y /V"
    puts "     / - \\"
    puts "    /    |"
    print "   V__) ||"
    puts ""
    puts "#{dog} sits! What a good #{gender}."
      puts ""
  end

  def speaking(dog)
    puts ""
    puts ""
    puts "    |\\_/|                  "
    puts "    | 0 0   Woof! "
    puts "    |   <>              _  "
    puts "    |  _/\\------____ ((| |))"
    puts "    |               `--' |   "
    puts "____|_       ___|   |___.' "
    print "/_/_____/____/_______|"
    puts ""
    puts "#{dog} says 'Woof!'"
    puts ""
  end

  def dreaming(dog, gender)
    puts ""
    puts "                            Z"
    puts "              .--~~~___   z "
    puts " :-....,-------`~~'._.' z"
    puts "  `-,,,  ,_      ;'~U'"
    puts "   _,-' ,'`-__; '--."
    puts "  (_/'~~      ''''(;"
    puts ""
    puts ""
    puts "You gently pet #{dog}, who is dreaming... "
    puts "#{dog}'s tail wags sleepily. What a good #{gender}!"
    puts ""
  end

  def patting(dog, gender)
    puts ""
    puts "                                _"
    puts "                             ,:'/   _..._"
    puts "                            // ( `\"\"-.._.'"
    puts "                            \\| /    ^\___"
    puts "                            |     ^      4"
    puts "                            |     .      /"
    puts "                            \_     '-.--'"
    puts "                            (_'---'`)"
    puts "                            / `'---`()"
    puts "         ,              .'`          |"
    puts "     __  )\ --      _.-'              ;"
    puts "  _ \\'-./ | --  .'`   _              /"
    puts "    _\\\ /` /_ .'       '.          , |"
    puts "   -- /  /   /           \\   ;   |  \\"
    puts "     |  \\   |            |  .|   |   \\"
    puts "      \\  `\"|            /.-' |   |\\   \\"
    puts "        '-..-\      "
    puts ""
    puts "You pat #{dog}! #{dog}'s tail wags and wags!!!"
    puts "What a good #{gender}!"
  end

  def sleep(dog)
    puts ""
    if dog.sleeping?
      puts ""
      puts "                            Z"
      puts "              .--~~~___   z "
      puts " :-....,-------`~~'._.' z"
      puts "  `-,,,  ,_      ;'~U'"
      puts "   _,-' ,'`-__; '--."
      puts "  (_/'~~      ''''(;"
      puts ""
      puts "#{dog.name} is already sleeping!"
    puts ""
    else
      puts ""
      puts "                            Z"
      puts "              .--~~~___   z "
      puts " :-....,-------`~~'._.' z"
      puts "  `-,,,  ,_      ;'~U'"
      puts "   _,-' ,'`-__; '--."
      puts "  (_/'~~      ''''(;"
      puts ""
      puts "#{dog.name} is now asleep... Shh!"
      puts ""
    end
  end

  def grr(dog)
    puts ""
    puts ""
    puts "                                  ."
    puts "                              ))"
    puts "        )\\\\                  //"
    puts "       _``\\`,- '''' ''- ,,,/ /"
    puts "  .---'a> , < ,<' << ,<, ' / \\"
    puts "  `v^w   ' , << ,< ' <  <  / \\"
    puts "   ````--' \\  ,,,---''/ <' //"
    puts "            !! ;;    ( '  / \\"
    puts "            !!</       \\ `\\ /"
    puts "          <</          / /</"
    puts "                      <</"
    puts ""
    puts "#{dog} protecc! #{dog} attacc!"
    puts ""
  end

  def wakeup(dog)
    puts ""
    unless dog.sleeping?
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
      puts "#{dog.name} is already awake!"
    else
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
      puts "#{dog.name} just woke up!"
    end
  end

  def ask_for(item)
    puts ""
    puts "What is the #{item}?"
    print "> "
    reply = gets.chomp
    puts ""
    reply
  end
end
