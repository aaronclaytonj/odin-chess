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

    while true
      # select valid peice to move
      print "#{@game_logic.current_mover.color}"
      puts " Please select a valid piece (a1, b2, .. h8) or (q) to quit game"
      player_input = gets.chomp
      if player_input[0] == 'q'
        quit_game()
      end

      if @game_logic.validate_select_piece_input(player_input)
        validated_input = player_input
        break
      end
    end

    puts "Validated input = #{validated_input}"

    
    while true
      #select valid square to move to
      print "#{@game_logic.current_mover.color}"
      puts " Please select a valid square to move to (a1, b2, .. h8) or (q) to quit game"
      player_input = gets.chomp
      if player_input[0] == 'q'
        quit_game()
      end

      if @game_logic.validate_select_square_input(player_input)
        validated_input = player_input
        break
      end
    end

    @game_logic.change_turns()
  end

  def quit_game()
    puts "THANK YOU FOR PLAYING"
    exit(true)
  end
end