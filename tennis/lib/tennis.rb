class Tennis

  attr_accessor :player1_name, :player2_name
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
    if @player2_score == 4
      return "#{@player2_name} adv"
    end
    if @player1_score == 4
      return "#{@player1_name} adv"
    end
    if @player1_score == @player2_score
      if @player1_score < 3
        return "#{SCORE_STRINGS[@player1_score]} all"
      else
        return "deuce"
      end
    end
    "#{SCORE_STRINGS[@player1_score]} #{SCORE_STRINGS[@player2_score]}" if @player1_score != 0 || @player2_score != 0
  end

  def player1_goals
    @player1_score += 1
  end

  def player2_goals
    @player2_score += 1
  end
end