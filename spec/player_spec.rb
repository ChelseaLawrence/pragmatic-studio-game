describe Player do

  before do
    $stdout = StringIO.new
    @initial_health = 150
    @player = Player.new("hillary", @initial_health)
  end

  it 'is capitalized' do
    expect(@player.name).to eq("Hillary")
  end

  it 'has a default initial health of 100 if no health is specified' do
    player = Player.new("hillary")
    expect(player.health).to eq(100)
  end

  it 'has an initial health of 105 if health of 105 is specified' do
    player = Player.new("hillary", 105)
    expect(player.health).to eq(105)
  end

  it 'has a string representation' do
    @player.find_treasure(Treasure.new(:hammer, 50))
    @player.find_treasure(Treasure.new(:hammer, 50))

    expect(@player.to_s).to eq('I\'m Hillary with a health = 150, points = 100, and score = 250.')
  end

  it 'computes a score as the sum of its health and points' do
    @player.find_treasure(Treasure.new(:hammer, 50))
    @player.find_treasure(Treasure.new(:hammer, 50))

    expect(@player.score).to eq(250)
  end

  it 'increases health by 15 when w00ted' do
    @player.w00t
    expect(@player.health).to eq(@initial_health + 15)
  end

  it 'decreases health by 10 when blammed' do
    @player.blam
    expect(@player.health).to eq(@initial_health - 10)
  end

  context 'with a health greater than 100' do

    before do
      $stdout = StringIO.new
      @initial_health = 140
      @player = Player.new("hillary", @initial_health)
    end

    it 'is strong' do
      expect(@player.strong?).to eq(true)
    end

  end

  context 'with a health equal to 100' do

    before do
      $stdout = StringIO.new
      @initial_health = 100
      @player = Player.new("hillary", @initial_health)
    end

    it 'is wimpy' do
      expect(@player.strong?).to eq(false)
    end
  end

  context 'in a collection of players' do

    before do
      @player1 = Player.new("moe", 100)
      @player2 = Player.new("larry", 200)
      @player3 = Player.new("curly", 300)

      @players = [@player1, @player2, @player3]
      puts @players.sort
    end

    it 'is sorted by descending score' do
      expect @players.sort == [@player3, @player2, @player1]
    end

  end

end
