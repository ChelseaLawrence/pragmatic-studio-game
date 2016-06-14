require 'simplecov'

# save to CircleCI's artifacts directory if we're on CircleCI
if ENV['CIRCLE_ARTIFACTS']
  dir = File.join(ENV['CIRCLE_ARTIFACTS'], "coverage")
  SimpleCov.coverage_dir(dir)
end

SimpleCov.start

require 'studio_game/game.rb'
require 'studio_game/player.rb'
require 'studio_game/die.rb'
require 'studio_game/treasure_trove.rb'
require 'studio_game/clumsy_player.rb'
require 'studio_game/berserk_player.rb'
require 'studio_game/auditable.rb'
