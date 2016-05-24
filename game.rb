require_relative 'player'

class Game
  attr_reader :game_title

  def initialize(game_title)
    @game_title = game_title
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
      player.w00t
      player.blam
      player.blam
      puts player
    end

  end

end
