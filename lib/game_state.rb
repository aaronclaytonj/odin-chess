class GameState

  attr_reader :piece_picked
  attr_accessor :color, :is_checked

  def initialize()
    @is_checked = false
    @piece_picked = nil
    @current_mover = false
    @color = nil
  end
end