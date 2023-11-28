require './lib/game_logic'

class Game
  
  def initialize()
    @game_logic = GameLogic.new
  end

  def play()
    until @game_logic.is_game_over
      puts 'please enter something (q) to quit'
      player_input = gets.chomp.downcase
      if player_input.include? ('q')
        break
      end
    end

    puts "thanks for playign"
  end
end