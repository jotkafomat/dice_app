class Game
  attr_reader :dice_records
    def initialize
      @dice_records = []
    end
  def roll_dice(count = 1)
    roll = 1.upto(count).collect{rand(1..6)}
    @dice_records.push(roll)
    roll
  end
  def score
    @dice_records.flatten.sum
  end
end
