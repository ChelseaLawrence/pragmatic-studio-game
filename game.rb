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

  def play_game(rounds)
    puts "There are #{@players.length} players in the game.:"

    @players.each do |player|
      puts "#{player.name} (#{player.health})"
    end

    1.upto(rounds).each do |round|
      puts "\nRound: #{round}"

      @players.each do |player|
        GameTurn.take_turn(player)
        puts player
      end

    end
  end

  def print_name_and_health(player)
    puts "#{player.name} #{player.score}"
  end

  def print_stats
    puts "\n Knucklehead Statistics:"

    strong_players, wimpy_players = @players.partition { |player| player.strong? }

    puts "Strong players:"
    strong_players.each do |player|
      puts "#{player.name} (#{player.health})"
    end

    puts "Wimpy players:"
    wimpy_players.each do |player|
      puts "#{player.name} (#{player.health})"
    end

  end
end

