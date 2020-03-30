class Question
  RAND_NUM_1 = rand(20)
  RAND_NUM_2 = rand(20)
  
  def ask
    @qn = "What does #{RAND_NUM_1} + #{RAND_NUM_2} equal?"
    @ans = RAND_NUM_1 + RAND_NUM_2
    return {"question" => @qn, "answer" => @ans}
  end

end

q1 = Question.new
ret = q1.ask
puts ret["question"].inspect
puts ret["answer"].inspect