

puts "Welcome to Nim\nPlease enter initial number of stones\n"

stones = gets.chomp.to_i
stones_left = 0

while stones > 0
  puts "#{stones} stones left: " + '*' * stones
  puts "Remove how many ?"
  stones_left = gets.chomp.to_i
  stones -= stones_left

end

puts "Game Over"
