require 'dice'

describe Dice do

  it 'rolls a random number between 1 and 6' do
    expect(subject.roll(1)).to be_between(1,6)
  end

  it 'rolls a number of dice in one go' do
    expect(subject).to respond_to(:roll).with(1).argument
  end

  it 'shows the results of rolls' do
    allow(subject).to receive(:roll).and_return([1, 2, 3])
    expect(subject.roll(1)).to eq [1, 2, 3]
 end

end
