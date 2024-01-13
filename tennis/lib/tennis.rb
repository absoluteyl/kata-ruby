class Tennis

  attr_accessor :player1_score, :player2_score

  SCORE_STRINGS = {
    0 => 'love',
    1 => 'fifteen',
    2 => 'thirty',
    3 => 'forty'
  }

  def initialize
    @player1_score = 0
    @player2_score = 0
  end

  def score
    return "#{SCORE_STRINGS[@player1_score]} all"  if @player1_score == @player2_score
    "#{SCORE_STRINGS[@player1_score]} #{SCORE_STRINGS[@player2_score]}" if @player1_score != 0 || @player2_score != 0
  end

  def player1_goals
    @player1_score += 1
  end

  def player2_goals
    @player2_score += 1
  end
end