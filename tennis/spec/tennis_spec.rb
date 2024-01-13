require 'tennis'

RSpec.describe Tennis, '#score' do
  def given_player1_score_is(score)
    score.times { @tennis.player1_goals }
  end

  def given_player1_name_is(name)
    @tennis.player1_name = name
  end

  def given_player2_score_is(score)
    score.times { @tennis.player2_goals }
  end

  def given_player2_name_is(name)
    @tennis.player2_name = name
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

  context 'when player 1 goals 3 times' do
    it 'should be forty love' do
      given_player1_score_is(3)
      score_should_be('forty love')
    end
  end

  context 'when player 2 goals' do
    it 'should be love fifteen' do
      given_player2_score_is(1)
      score_should_be('love fifteen')
    end
  end

  context 'when player 2 goals twice' do
    it 'should be love thirty' do
      given_player2_score_is(2)
      score_should_be('love thirty')
    end
  end

  context 'when player 2 goals 3 times' do
    it 'should be love forty' do
      given_player2_score_is(3)
      score_should_be('love forty')
    end
  end

  context 'when score is 1:1' do
    it 'should be fifteen all' do
      given_player1_score_is(1)
      given_player2_score_is(1)
      score_should_be('fifteen all')
    end
  end

  context 'when score is 2:2' do
    it 'should be thirty all' do
      given_player1_score_is(2)
      given_player2_score_is(2)
      score_should_be('thirty all')
    end
  end

  context 'when score is 3:3' do
    it 'should be deuce' do
      given_player1_score_is(3)
      given_player2_score_is(3)
      score_should_be('deuce')
    end
  end

  context 'when player1 goals after deuce' do
    it 'should be player1 adv' do
      given_player1_name_is('Henry')
      given_player1_score_is(3)
      given_player2_score_is(3)
      given_player1_score_is(1)
      score_should_be('Henry adv')
    end
  end

  context 'when player2 goals after deuce' do
    it 'should be player2 adv' do
      given_player2_name_is('Jack')
      given_player1_score_is(3)
      given_player2_score_is(3)
      given_player2_score_is(1)
      score_should_be('Jack adv')
    end
  end
end