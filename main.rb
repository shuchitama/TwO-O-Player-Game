require './player'
require './question'
require './game'


game = Game.new
# puts game.ongoing
while !game.gameover
  question = Question.new
  puts "#{game.current_player.name}: #{question.ask} "
  answer = gets.chomp.to_i
  if question.check_answer(answer)
    puts "YES! You are correct"
  else 
    puts "Seriously?? No!"
    game.current_player.lives = game.current_player.lives - 1
  end
  game.change_turn
  if !game.gameover
    puts game.status
    puts "---- NEW TURN ----"
  else 
    puts "#{game.current_player.name} wins with a score of #{game.current_player.lives}/3"
    puts "---- GAME OVER ----"
    puts "Good bye!"
  end
end