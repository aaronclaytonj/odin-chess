class GameState

  attr_reader :piece_picked
  attr_accessor :color

  def initialize()
    @is_checked = false
    @piece_picked = nil
    @current_mover = false
    @color = nil
  end
end