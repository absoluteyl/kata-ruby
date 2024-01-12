require 'tennis'

RSpec.describe Tennis, '#score' do
  def score_should_be(expected_score)
    expect(@tennis.score).to eq(expected_score)
  end

  before do
    @tennis = Tennis.new
  end

  context 'when initialize' do
    it 'should be love all' do
      score_should_be('love all')
    end
  end

  context 'when player 1 goals' do
    it 'should be fifteen love' do
      @tennis.player1_goals
      score_should_be('fifteen love')
    end
  end

  context 'when player 1 goals twice' do
    it 'should be thirty love' do
      @tennis.player1_goals
      @tennis.player1_goals
      score_should_be('thirty love')
    end
  end
end