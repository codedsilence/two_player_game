require './two_player.rb'
require 'colorize'

@player_one_lives = 3
@player_two_lives = 3 

def intro
  puts "Enter your name, Player 1: "
  @player1 = gets.chomp
  puts "Thanks, #{@player1}"
  puts "Enter your name, Player 2: "
  @player2 = gets.chomp
  puts "Thanks, #{@player2}"
  puts "Welcome!"
  @current_player = @player1
end

def main
  intro
  while @player_one_lives != 0 && @player_two_lives != 0
    generate_question
    puts prompt_player(@current_player)
    answer = gets.chomp.to_i
    result = verify_answer(answer)
    switch_player
    if result == false 
      if @current_player == @player1
        @player_one_lives -= 1
      else
        @player_two_lives -= 1
      end
      puts "#{@player1}: #{@player_one_lives} lives"
      puts "#{@player2}: #{@player_two_lives} lives"
      puts "Thats bad math!"
    else 
      puts "Nicely done!"
    end
  end 
  puts "Game over! #{@current_player} lost!".colorize (:red)
end

main
