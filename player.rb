class Player
  attr_accessor :lives, :name
  def initialize(name)
    @name = name
    @lives = 3
  end

  def gameover
    self.lives == 0 ? true : false
  end
end