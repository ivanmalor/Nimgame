
class Player
  @@players = []
  attr_accessor :username, :given_name, :family_name
  attr_reader :games_played, :games_won

  def self.add
    puts "\nEnter username\n\n"
    username = gets.chomp

    while username_exist?(username)
      puts "\nThe player already exist. Please use a different username\n\n"
      username = gets.chomp
    end

    puts "\nEnter given name\n\n"
    given_name = gets.chomp

    puts "\nEnter family name\n\n"
    family_name = gets.chomp

    Player.new(username, given_name, family_name)
  end

  def self.username_exist?(username)
    usernames = @@players.map { |player| player.username }
    usernames.include?(username)
  end

  def initialize(username, given_name, family_name)
    @username = username
    @given_name = given_name
    @family_name = family_name
    @games_played, @games_won = 0,0
    @@players << self
  end

end
