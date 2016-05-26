require_relative 'player'
require_relative 'die'
require_relative 'game_turn'

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
      GameTurn.take_turn(player)
      puts player
    end

  end

end
