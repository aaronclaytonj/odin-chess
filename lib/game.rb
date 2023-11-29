require './lib/game_logic'

require 'pry-byebug'

class Game
  
  def initialize()
    @game_logic = GameLogic.new
  end

  def play()
    # binding.pry
    until @game_logic.is_game_over
      # @game_logic.print_current_instructions
      # player_input = gets.chomp.downcase
      # if player_input.include? ('q')
      #   break
      # end
      player_turns()

    end

    puts "thanks for playign"
  end

  def player_turns()

    #Check for check
    puts "#{@game_logic.current_mover.color}, you are in check! Move your king" if @game_logic.in_check?

    #show options
    # select peice or quit
    # select square to move to
    # swap players
    puts "#{@game_logic.current_mover.color}s turn"
    puts "please select a piece (a1, a2.. a8, etc...) or (q) to quit game"
    select_peice_input = gets.chomp
    if select_peice_input[0] == 'q'
      quit_game()
    end

    # select valid peice to move
    validated_input = @game_logic.validate_select_piece_input(select_peice_input)
    puts "Validated input = #{validated_input}"

    #select valid square to move to


    @game_logic.change_turns()
  end

  def quit_game()
    puts "THANK YOU FOR PLAYING"
    exit(true)
  end
end