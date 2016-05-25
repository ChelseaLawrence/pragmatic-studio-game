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
    @health += 15
  end

  def name=(new_name)
    @name = new_name.capitalize
  end

  def score
    @health + @name.length
  end

  def strong?
    @health > 100
  end

# Only run if the name of current source file (__FILE__) is the same as the program being run ($0 or $PROGRAM_NAME).

  if __FILE__ == $0
    player = Player.new("moe")
    puts player.name
    puts player.health
    player.w00t
    puts player.health
    player.blam
    puts player.health
  end

end
