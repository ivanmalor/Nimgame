# Nymsys is a text interactive program that reads and
# executes commands from standard input
require 'player'

class Nimsys

  def launch!
    introduction
    # action loop (idle state)
    result = nil
    until result == :end
      # input command
      prompt
      user_response = gets.chomp.downcase

      result = do_action(user_response)
    end
    # Exit the program
    conclusion
  end

  def do_action(action)
    case action
    when "addplayer"
      Player.add
    when "removeplayer"
      Player.remove
    when "editplayer"
      Player.edit
      # Reset stats

      # Display player

      # Rankings

      # Start game (active state)
    when "end"
      :end
    else
      puts "I don't understand the command"
    end
  end

  def introduction
    puts "\n\n<<< Welcome to Nim >>>\n\n"
  end

  def prompt
    print "> "
  end

  def conclusion
    puts "\n<<< Bye! >>>\n\n\n"
  end

end
