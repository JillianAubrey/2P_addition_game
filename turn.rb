class Turn
  def initialize(player)
    @player = player
    @question = Question.new
  end

  def run 
    puts "----- NEW TURN -----"
    puts "#{@player.long_name}:  #{@question.question}"
    answer = gets.chomp.to_i

    if answer == @question.answer
      puts "#{@player.long_name}: YES! You are correct."
      return 1
    end

    puts "#{@player.long_name}: Seriously? No!"
    @player.take_life
  end
end