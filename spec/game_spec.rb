describe Game do

  before do
    @game = Game.new('knuckleheads')
  end

  it 'has a capitalized title' do
    expect(@game.game_title).to eq 'Knuckleheads'
  end

end
