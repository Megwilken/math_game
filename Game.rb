require_relative 'Player'
require_relative 'Question'

class Game
  def initialize 
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
    @game_over = @false
  end

  def start
    until @game_over do
      ask_question
      switch_player
    end
    end_game
  end

  private

  def ask_question
    question = Question.new
    puts "#{@current_player.name}: #{question.questions}"
    answer = gets.chomp.to_i
    if answer == question.answer
      puts "Correct!"
      @current_player.gained_point
    else
      puts "Incorrect!"
      @current_player.lost_life
    end
    puts "Score: Player 1: #{player1.score}, Player 2: #{player2.score}"
    check_lives
  end

  def check_lives
    if @player1.lives == 0 || @player2.lives == 0
      @game_over = true
    end
  end

  def switch_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
end

  def end_game
    if @player1.lives == 0
      puts "Player 2 wins with a score of #{@player2.score}"
    else
      puts "Player 1 wins with a score of #{@player1.score}"
    end
  end
end
