require_relative 'player'
require_relative 'die'

class Game
  attr_reader :game_title

  def initialize(game_title)
    @game_title = game_title.capitalize
    @players = []
  end

  def add_player(player)
    @players.push player
  end

  def play_game
    puts "There are #{@players.length} players in the game.:"

    @players.each do |player|
      puts player
    end

    @players.each do |player|
      die = Die.new

      case die.roll
        when 1..2
          player.blam
        when 3..4
          puts
          "Player #{player} was skipped."
        else
          player.w00t
      end
      puts player
    end

  end

end
