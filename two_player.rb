

def generate_question
  x = (1..20).to_a.sample
  y = (1..20).to_a.sample
   puts "What is #{x} plus #{y}?"
  @correct_answer = x + y
end

def prompt_player(player)
  "#{player} - your turn!"
end

def verify_answer(answer)
  answer == @correct_answer
end

def switch_player
  @current_player = (@current_player == @player1 ? @player2 : @player1)
end