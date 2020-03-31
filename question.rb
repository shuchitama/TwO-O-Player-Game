class Question
  RAND_NUM_1 = rand(20)
  RAND_NUM_2 = rand(20)
  
  def ask
    puts "What does #{RAND_NUM_1} + #{RAND_NUM_2} equal?"
  end

  def check_answer(ans)
    if RAND_NUM_1 + RAND_NUM_2 == ans
      true
    end
      false
  end

end

# q1 = Question.new
# ret = q1.ask
# puts ret["question"].inspect
# puts ret["answer"].inspect