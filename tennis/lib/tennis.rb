class Tennis

  attr_accessor :player1_score

  def initialize
    @player1_score = 0
  end

  def score
    return 'fifteen love' if @player1_score == 15
    return 'thirty love' if @player1_score == 30

    'love all'
  end

  def player1_goals
    @player1_score += 15
  end
end