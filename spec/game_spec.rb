require 'game.rb'
describe Game do
  it 'is able to roll a dice' do
    expect(subject).to respond_to(:roll_dice)
  end

  it 'rolls a dice and get a number between 1 and 6' do
    expect(subject.roll_dice.first).to be_between(1, 6).inclusive
   end

  it { is_expected.to respond_to(:roll_dice).with(1).argument }

  it 'records each dice roll' do
    new_game = Game.new
    new_game.roll_dice
    expect(new_game.dice_records.size).to eq (1)
  end

  it 'shows a current score' do
    new_game = Game.new

    expected_score = [new_game.roll_dice, new_game.roll_dice, new_game.roll_dice].flatten.sum
    
    expect(new_game.score).to eq (expected_score)
  end
end
