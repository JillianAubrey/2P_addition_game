require './player'
require './question'
require './turn'

####################
# Player test code #
####################
# player1 = Player.new(1)

# # 3 Lives
# puts player1.lives
# puts player1.win

# # 2 Lives
# player1.take_life
# puts player1.lives
# puts player1.win

# # 1 Life
# player1.take_life
# puts player1.lives
# puts player1.win

# # 0 Lives
# player1.take_life
# puts player1.lives

######################
# Question Test Code #
######################
# question = Question.new
# puts question.question
# puts question.answer

# question = Question.new
# puts question.question
# puts question.answer

##################
# Turn Test Code #
##################
player = Player.new(1)
Turn.new(player).run
puts player.lives
