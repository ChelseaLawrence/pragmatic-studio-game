class Die
  attr_reader :die_number

  def initialize
    roll
  end

  def roll
    @die_number = rand(1..6)
  end

end
