require_relative 'game'
require_relative 'clumsy_player'
require_relative 'berserk_player'

knuckleheads = Game.new("Knuckleheads")
knuckleheads.load_players(ARGV.shift || 'players.csv')

clumsy = ClumsyPlayer.new('klutz', 105, 3)
knuckleheads.add_player(clumsy)

berserker = BerserkPlayer.new('berserker', 50)
knuckleheads.add_player(berserker)

loop do
  puts "How many game rounds? ('quit' to exit)"

  answer = gets.chomp.downcase

  case answer
    when /^\d+$/
      knuckleheads.play_game(answer.to_i)
    when 'quit' || 'exit'
      knuckleheads.print_stats
      break
    else
      puts "Please enter a number or 'quit'."
  end
end

knuckleheads.print_stats

knuckleheads.save_high_scores
