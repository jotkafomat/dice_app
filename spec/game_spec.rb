require './lib/game.rb'
describe Game do

  it { is_expected.to respond_to(:roll_dice).with(1).argument }

  it 'rolls a dice and get a number between 1 and 6' do
    expect(subject.roll_dice.first).to be_between(1, 6).inclusive
   end

  it { is_expected.to respond_to(:roll_dice).with(1).argument }

  it 'keeps a record of each dice roll' do
    new_game = Game.new
    initial_record_count = new_game.dice_records.size
    new_game.roll_dice
    expect(new_game.dice_records.size).to eq (initial_record_count + 1)
  end

  it 'shows a cummulative score' do
    new_game = Game.new

    allow(new_game).to receive(:rand).and_return(5)

    3.times { new_game.roll_dice }

    expect(new_game.score).to eq (15)
  end
end
