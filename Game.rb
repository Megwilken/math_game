require_relative "Player"
require_relative "Question"

class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
    @game_over = false
  end

  def play
    while !@game_over
      question = Question.new
      puts "#{@current_player.name}: #{question.question}"
      answer = gets.chomp.to_i
      if answer == question.answer
        @current_player.gained_point
      else
        @current_player.lost_life
        if @current_player.lives == 0
          @game_over = true
          break
        end
      end
      switch_players
      puts "Player 1: #{@player1.score} vs Player 2: #{@player2.score}"
    end
    if @player1.score > @player2.score
      puts "Game over! Player 1 wins with a score of #{@player1.score}."
    else
      puts "Game over! Player 2 wins with a score of #{@player2.score}."
      puts "Good bye!"
    end
  end

  def switch_players
    @current_player = @current_player == @player1 ? @player2 : @player1
  end
end
