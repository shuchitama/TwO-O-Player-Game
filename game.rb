require './player'
require './question'

class Game
  attr_accessor :p1, :p2, :current_player
  def initialize
    @p1 = Player.new("Player1")
    @p2 = Player.new("Player2")
    @current_player = @p1
  end

  def gameover
    @p1.gameover || @p2.gameover
  end

  def status
    "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
  end

  def change_turn
    @current_player = @current_player == @p1 ? @p2 : @p1
  end
end
