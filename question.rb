class Question
  attr_reader :RAND_NUM_1, :RAND_NUM_2

  def initialize
    @RAND_NUM_1 = rand(20)
    @RAND_NUM_2 = rand(20)
  end

  def ask
    "What does #{@RAND_NUM_1} + #{@RAND_NUM_2} equal?"
  end

  def check_answer(ans)
    @RAND_NUM_1 + @RAND_NUM_2 == ans ? true : false
  end

end