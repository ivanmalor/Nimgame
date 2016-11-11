# Nymsys is a text interactive program that reads and
# executes commands from standard input

class Nimsys

  def launch!
    introduction
    # action loop (idle state)

    # Add player

    # Remove player

    # Edit player

    # Reset stats

    # Display player

    # Rankings

    # Start game (active state)

    # Exit the program

    conclusion
  end


  def introduction
    puts "\n\n<<< Welcome to Nim >>>\n\n"
    print ">"
  end

  def conclusion
    puts "\n<<< Bye! >>>\n\n\n"
  end

end
