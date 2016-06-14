module StudioGame

  describe Game do

    before do
      @game = Game.new('knuckleheads')

      @initial_health = 100
      @player = Player.new("hillary", @initial_health)

      @game.add_player(@player)
    end

    it 'has a capitalized title' do
      expect(@game.game_title).to eq 'Knuckleheads'
    end

    it 'w00ts and increases the player\'s health by 15 health when a high number is rolled' do
      Die.any_instance.stub(:roll).and_return(5)

      @game.play_game(2)

      expect(@player.health).to eq(@initial_health + (15 * 2))
    end

    it 'does nothing when a medium number is rolled' do
      Die.any_instance.stub(:roll).and_return(4)

      @game.play_game(2)

      expect @player.health == @initial_health
    end

    it 'blams and decreases the player\'s health by 10 when a low number is rolled' do
      Die.any_instance.stub(:roll).and_return(2)

      @game.play_game(2)

      expect @player.health == @initial_health - (10 * 2)
    end


    it 'assigns a treasure for points during a player\'s turn' do
      game = Game.new('knuckleheads')
      player = Player.new('moe')

      game.add_player(player)

      game.play_game(1)

      expect(player.points).not_to be_zero

    end

  end

end
