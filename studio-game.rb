require_relative 'game'

player1 = Player.new("momo")

player2 = Player.new("shrimpy", 60)

player3 = Player.new("curly", 125)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)

knuckleheads.play_game

player4 = Player.new ("Harry")
player5 = Player.new ("Hermione")
player6 = Player.new("Ron")

wizards_duel = Game.new("Wizards Duel")
wizards_duel.add_player(player4)
wizards_duel.add_player(player5)
wizards_duel.add_player(player6)

wizards_duel.play_game
