require 'tennis'

RSpec.describe Tennis, '#score' do

  before do
    @tennis = Tennis.new
  end

  context 'when initialize' do
    it 'should be love all' do
      expect(@tennis.score).to eq('love all')
    end
  end

  context 'when player 1 goals' do
    it 'should be fifteen love' do
      @tennis
      @tennis.player1_goals
      expect(@tennis.score).to eq('fifteen love')
    end
  end
end