require 'tennis'

RSpec.describe Tennis, '#score' do
  context 'when initialize' do
    it 'should be love all' do
      expect(Tennis.new.score).to eq('love all')
    end
  end

  context 'when player 1 goals' do
    it 'should be fifteen love' do
      tennis = Tennis.new
      tennis.player1_goals
      expect(tennis.score).to eq('fifteen love')
    end
  end
end