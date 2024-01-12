require 'tennis'

RSpec.describe Tennis, '#score' do
  def given_player1_score_is(score)
    score.times { @tennis.player1_goals }
  end

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
      given_player1_score_is(1)
      score_should_be('fifteen love')
    end
  end

  context 'when player 1 goals twice' do
    it 'should be thirty love' do
      given_player1_score_is(2)
      score_should_be('thirty love')
    end
  end
end