# Nymsys is a text interactive program that reads and
# executes commands from standard input
require 'player'

class Nimsys

  def launch!
    introduction
    prompt
    # action loop (idle state)

    command = nil
    until command == "end"
      # input command
      command = gets.chomp.downcase

      # Add player
      if command == "addplayer"
        Player.add

      # Remove player
      elsif command == "removeplayer"
        Player.remove
      # Edit player
      elsif command == "editplayer"
        Player.edit

      # Reset stats

      # Display player

      # Rankings

      # Start game (active state)
      end
      prompt
    end
    # Exit the program



    conclusion
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
