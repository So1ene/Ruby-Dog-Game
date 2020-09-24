# frozen_string_literal: true

# View
class View
  def getdogs(dogs)
    dogs.each_with_index do |dog, index|
      sleeping = dog.sleeping? ? ' (Sleeping)' : ''
      puts "\n#{index + 1}. #{dog.name}: #{dog.age} year(s) old,
      #{dog.gender.downcase}, #{dog.breed.downcase} breed, #{dog.size}cm,
      #{dog.color.downcase}#{sleeping}"
    end
  end

  def list(dogs)
    puts 'Your dogs:'
    getdogs(dogs)
    puts ''
  end

  def dog
    print `clear`
    puts "\n                           _\n                        ,:'/   _..._
                       // ( `\"\"-.._.'\n                       \\| /    6\___
                       |     6      4\n                       |            /
                       \_     '-.--'\n                       (_'---'`)
                       / `'---`()\n    ,              .'`          |
   )\\        _.-'               ;\n   / |   _ .'`   _              /
  /` /  .'       '.          , |\n /  /   /           \\   ;   | |
|  \\   |            |  .|   | |\n \\  `\"|            /.-'|   | |
   '-..-\\      "
  end

  def info(dog)
    puts "Name: #{dog.name}\nAge: #{dog.age} year(s) old\nGender: #{dog.gender}"
    puts "Breed: #{dog.breed}\nSize: #{dog.size}cm\nColor: #{dog.color}"
    print 'Status: '
    if dog.sleeping?
      puts "Sleeping\n"
    else
      puts "Awake\n"
    end
  end

  def confirmation
    print `clear`
    print '.'
    sleep(0.1)
    print '.'
    sleep(0.1)
    print '.'
    sleep(0.2)
    puts 'Success!'
    sleep(1)
    print `clear`
  end

  def ask_for_index
    puts "\nWhich dog? (Type its number from the list)\n"
    print '> '
    (gets.chomp.to_i - 1)
  end

  def error
    puts "\nvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv\n
/!\\ ERROR > Unknown input, please try again! <\n
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n"
  end

  def title
    puts "\n            --\n       POCKET DOGGOS\n            --\n"
  end

  def will_not(dog, action)
    puts "\n                            Z\n              .--~~~___   z
 :-....,-------`~~'._.' z
  `-,,,  ,_      ;'~U'
   _,-' ,'`-__; '--.
  (_/'~~      ''''(;\n\n#{dog} is asleep! He will not #{action}.\n"
  end

  def sitting(dog, gender)
    puts "\n\n\n     /^-^\\\n    / ^ ^ \\\n    V\\ Y /V\n     / - \\
    /    |\n   V__) ||\n\n#{dog} sits! What a good #{gender}.\n"
  end

  def speaking(dog)
    puts "\n\n    |\\_/|
    | 0 0   Woof!
    |   <>              _
    |  _/\\------____ ((| |))
    |               `--' |
____|_       ___|   |___.'
/_/_____/____/_______|
\n#{dog} says 'Woof!'\n"
  end

  def dreaming(dog, gender)
    puts "\n                            Z\n              .--~~~___   z
 :-....,-------`~~'._.' z\n  `-,,,  ,_      ;'~U'
   _,-' ,'`-__; '--.\n  (_/'~~      ''''(;\n
You gently pet #{dog}, who is dreaming...
#{dog}'s tail wags sleepily. What a good #{gender}!\n"
  end

  def patting(dog, gender)
    puts "\n                             _\n                          ,:'/   _.\
.._\n                         // ( `\"\"-.._.'
                         \\| /    ^\___\n                         |     ^      4
                         |     .      /\n                         \_     '-.--'
                         (_'---'`)\n                         / `'---`()
      ,              .'`          |\n  __  )\ --      _.-'              ;
 \\'-./ | --  .'`   _              /\n _\\\ /` /_ .'       '.          , |
-- /  /   /           \\   ;   |  \\\n  |  \\   |            |  .|   |   \\
   \\  `\"|            /.-' |   |\\   \\\n     '-..-\\\n
You pat #{dog}! #{dog}'s tail wags and wags!!!\nWhat a good #{gender}!"
  end

  def sleep(dog)
    puts ''
    if dog.sleeping?
      puts "                            Z\n              .--~~~___   z
 :-....,-------`~~'._.' z\n  `-,,,  ,_      ;'~U'
   _,-' ,'`-__; '--.\n  (_/'~~      ''''(;\n
#{dog.name} is already sleeping!\n"
    else
      puts "                            Z\n              .--~~~___   z
 :-....,-------`~~'._.' z\n  `-,,,  ,_      ;'~U'
   _,-' ,'`-__; '--.\n  (_/'~~      ''''(;\n
#{dog.name} is now asleep... Shh!\n"
    end
  end

  def grr(dog)
    puts "\n\n                                  .
                              ))\n        )\\\\                  //
       _``\\`,- '''' ''- ,,,/ /\n  .---'a> , < ,<' << ,<, ' / \\
  `v^w   ' , << ,< ' <  <  / \\\n   ````--' \\  ,,,---''/ <' //
            !! ;;    ( '  / \\\n            !!</       \\ `\\ /
          <</          / /</\n                      <</
\n#{dog} protecc! #{dog} attacc!\n"
  end

  def awake_ascii
    "                           _\n                        ,:'/   _..._
                       // ( `\"\"-.._.'\n                       \\| /    6\___
                       |     6      4\n                       |            /
                       \_     '-.--'\n                       (_'---'`)
                       / `'---`()\n    ,              .'`          |
   )\\        _.-'               ;\n   / |   _ .'`   _              /
  /` /  .'       '.          , |\n /  /   /           \\   ;   | |
|  \\   |            |  .|   | |\n \\  `\"|            /.-'|   | |
   '-..-\\\n\n"
  end

  def wakeup(dog)
    puts ''
    puts awake_ascii
    if dog.sleeping?
      puts "#{dog.name} just woke up!\n"
    else
      puts "#{dog.name} is already awake!\n"
    end
  end

  def ask_for(item)
    puts ''
    puts "What is the #{item}?"
    print '> '
    reply = gets.chomp
    puts ''
    reply
  end
end
