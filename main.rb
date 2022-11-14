require './player'

#Player test code
player1 = Player.new("Player 1")

# 3 Lives
puts player1.lives
puts player1.win

# 2 Lives
player1.take_life
puts player1.lives
puts player1.win

# 1 Life
player1.take_life
puts player1.lives
puts player1.win

# 0 Lives
player1.take_life
puts player1.lives