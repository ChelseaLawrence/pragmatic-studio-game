require_relative 'die'
require_relative 'player'
require_relative 'treasure_trove'

module GameTurn
  def self.take_turn(player)
    die = Die.new

    case die.roll
      when 1..2
        player.blam
      when 3..4
        print "Player #{player.name} was skipped."
      else
        player.w00t
    end

    found_treasure = TreasureTrove.random

    puts "\n#{player.name} found a #{found_treasure.name} worth #{found_treasure.points} points."

    puts "#{player}"
  end
end
