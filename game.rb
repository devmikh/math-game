require "./player"
require "./question"

class Game

  attr_reader :current_player, :opposite_player, :player1, :player2, :question

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
    @opposite_player = @player2
    @question = Question.new
  end

  def next_turn
    puts "----- NEW TURN -----"
    if @current_player == player1
      @current_player = player2
      @opposite_player = player1
    else
      @current_player = player1
      @opposite_player = player2
    end
    @question = Question.new
  end

  

end