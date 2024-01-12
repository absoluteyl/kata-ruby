class Tennis

  attr_accessor :player1_score

  SCORE_STRINGS = {
    1 => 'fifteen',
    2 => 'thirty'
  }

  def initialize
    @player1_score = 0
  end

  def score
    return "#{SCORE_STRINGS[@player1_score]} love" if @player1_score != 0

    'love all'
  end

  def player1_goals
    @player1_score += 1
  end
end