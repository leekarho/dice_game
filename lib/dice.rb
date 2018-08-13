class Dice

  def initialize
    @dice_score = []
  end

  def roll(n)
    @dice_score.clear
    n.times {@dice_score << rand(1..6)}
    @dice_score
  end

end
