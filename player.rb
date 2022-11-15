class Player
  attr_reader :num

  def initialize(num)
    @num = num
    @lives = 3
  end

  def lives
    life_string = '❤️ ' * @lives
    life_string += '🖤' * (3 - @lives)
    "P#{num}: #{life_string.chomp}"
  end

  def take_life
    @lives -= 1
  end

  def win
    lives_remaining = 'all 3 lives' if @lives == 3
    lives_remaining = '2 lives' if @lives == 2
    lives_remaining = 'just 1 life' if @lives == 1
    "Player #{num} wins with #{lives_remaining} remaining!"
  end
end