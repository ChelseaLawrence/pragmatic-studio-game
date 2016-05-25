require_relative 'die'
require_relative 'player'

module GameTurn
  def self.take_turn(player)
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
