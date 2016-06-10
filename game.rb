require_relative 'player'
require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'

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
    puts "There are #{@players.length} players in the game:"

    @players.each do |player|
      puts "#{player.name} (#{player.health})"
    end

    treasures = TreasureTrove::TREASURES

    puts "\nThere are #{treasures.length} the treasures to be found:"

    treasures.each do |treasure|
      puts "#{treasure.name.capitalize} worth #{treasure.points} points"
    end


    1.upto(rounds).each do |round|
      puts "\nRound: #{round}"

      @players.each do |player|
        GameTurn.take_turn(player)
      end

    end
  end

  def print_name_and_health(player)
    puts "#{player.name} #{player.score}"
  end

  def print_stats
    puts "\nKnucklehead Statistics:"

    strong_players, wimpy_players = @players.partition { |player| player.strong? }

    puts "Strong players:"
    strong_players.each do |player|
      puts "#{player.name} (#{player.health})"
    end

    puts "\nWimpy players:"
    wimpy_players.each do |player|
      puts "#{player.name} (#{player.health})"
    end

    puts "\nPoint Totals:"

    @players.each do |player|
      puts "\n#{player.name}'s point totals:'"
      player.each_found_treasure do |treasure|
        puts "#{treasure.points} #{treasure.name}"
      end
      puts "#{player.points} grand total points"
    end

    puts "\n#{total_points} total points from treasures found."
  end

  def total_points
    @players.reduce(0) { |sum, player| sum + player.points }
  end

  def load_players(from_file)
    File.readlines(from_file).each do |line|
      puts line

      name, health = line.split(',')

      player = Player.new(name, health.to_i)

      add_player(player)
    end
  end

  def save_high_scores(to_file='high_scores.txt')
    File.open(to_file, 'w') do |file|
      file.puts "#{@game_title} High Scores:"

      @players.sort.each do |player|
        formatted_name = player.name.ljust(20, '.')
        file.puts "#{formatted_name}#{player.points}"
      end

    end

  end

end
