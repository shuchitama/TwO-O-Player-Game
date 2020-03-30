class Player
  attr_accessor :lives, :score
  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end
end

p1 = Player.new("Player1")
p1.score = p1.score + 1
p1.lives = p1.lives - 1
puts p1.inspect