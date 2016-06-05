describe Treasure do

  before do
    @treasure = Treasure.new(:hammer, 50)
  end

  it 'has a name attribute' do
    expect(@treasure.name).to eql(:hammer)
  end

  it 'has a points attribute' do
    expect(@treasure.points).to eql(50)
  end

end

describe TreasureTrove do

  it 'has six treasures' do
    expect TreasureTrove::TREASURES.size.to_i == 6
  end

  it 'has a pie worth 5 points' do
    expect TreasureTrove::TREASURES[0] == Treasure.new(:pie, 5)
  end

  it 'has a bottle worth 25 points' do
    expect TreasureTrove::TREASURES[1] == Treasure.new(:bottle, 25)
  end

  it 'has a hammer worth 50 points' do
    expect TreasureTrove::TREASURES[2] == Treasure.new(:hammer, 50)
  end

  it 'has a skillet worth 100 points' do
    expect TreasureTrove::TREASURES[3] == Treasure.new(:skillet, 100)
  end

  it 'has a broomstick worth 200 points' do
    expect TreasureTrove::TREASURES[4] == Treasure.new(:broomstick, 200)
  end

  it 'has a crowbar worth 400 points' do
    expect TreasureTrove::TREASURES[5] == Treasure.new(:crowbar, 400)
  end

  it 'returns a random treasure' do
    treasure =TreasureTrove.random

    TreasureTrove::TREASURES.should include(treasure)
  end

end
