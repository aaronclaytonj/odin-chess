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
    @black.is_checked = true
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

  def validate_select_piece_input(input)
    if !correct_length(input) or !in_range(input) # also need to check if square if an actual piece and it can move ie not in check
      return false
    end
    true
  end
  
  def correct_length(input)
    if input.length < 2
      print "Not enough chars. "
    elsif input.length > 2
      print "Too many chars. "
    else 
      return true
    end
  end

  def in_range(input)
    return true if input.match?(/[a-h]{1}[1-8]{1}/)
    print "Not a valid square. "
    false
  end

  def in_check?()
    return @current_mover.is_checked
  end
end