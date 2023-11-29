require './lib/game_state'

class GameLogic

  INSTRUCTIONS = 'Please enter valid  (q) to quit'
  SELECT_PIECE = 'Select a square (a1,a2,etc..)'

  attr_reader :current_mover
  
  def initialize()
    @white = GameState.new
    @black = GameState.new
    @current_mover = @white
    @white.color = :white
    @black.color = :black
  end

  def is_game_over()
    # puts "INFO() -> is_game_over() always return false here"
    false
  end

  def print_current_instructions()
    if @current_mover.piece_picked
      puts 'idk yet'
    else
      puts SELECT_PIECE
    end
  end
  
  def change_turns()
    if @current_mover == @white
      @current_mover = @black
    else
      @current_mover = @white
    end
  end
end