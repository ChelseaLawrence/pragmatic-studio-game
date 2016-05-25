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
    expect(@player.to_s).to eq('I\'m Hillary with a health of 150 and a score of 157.')
  end

  it 'computes a score as the sum of its health and length of name' do
    expect(@player.score).to eq(150 + 7)
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
end
