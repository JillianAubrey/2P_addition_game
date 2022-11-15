class Game
  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
  end

  def run
    @curr_player = @player1
    @off_player = @player2

    while (@curr_player.lives_count > 0 && @off_player.lives_count > 0)
      if Turn.new(@curr_player).run == 0
        end_game(@off_player)
        return
      end
      puts "#{@player1.lives} vs #{@player2.lives}"
      swap_players()
    end
  end

  private

  def swap_players
    temp = @curr_player
    @curr_player = @off_player
    @off_player = temp
  end

  def end_game(winner)
    puts "----- GAME OVER -----"
    puts winner.win
  end
end