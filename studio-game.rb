
class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end

  def blam
    puts "#{@name} got blammed!"
    @health -= 10
  end

  def w00t
    puts "#{@name} got w00ted!"
    @health += 10
  end

  def name=(new_name)
    @name = new_name.capitalize
  end

  def score
    @health + @name.length
  end

end

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

player1 = Player.new("momo")

player2 = Player.new("shrimpy", 60)

player3 = Player.new("curly", 125)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)

knuckleheads.play_game
