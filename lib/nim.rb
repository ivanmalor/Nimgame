

puts "Welcome to Nim Game"
puts "Please enter initial number of stones"

stones = gets.chomp.to_i

while stones > 0
  puts "#{stones} stones left: " + '* ' * stones
  puts "Remove how many ?"
  stones_left = gets.chomp.to_i
  stones -= stones_left
end

puts "Game Over"
