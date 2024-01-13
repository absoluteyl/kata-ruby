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
    if is_same_score
      if @player1_score < 3
        return "#{SCORE_STRINGS[@player1_score]} all"
      else
        return "deuce"
      end
    else
      if @player1_score > 3 || @player2_score > 3
        if (@player1_score - @player2_score).abs == 1
          return "#{adv_player_name} adv"
        else
          return "#{adv_player_name} win"
        end
      else
        return "#{SCORE_STRINGS[@player1_score]} #{SCORE_STRINGS[@player2_score]}"
      end
    end
  end

  def player1_goals
    @player1_score += 1
  end

  def player2_goals
    @player2_score += 1
  end

  private

  def is_same_score
    @player1_score == @player2_score
  end

  def adv_player_name
    @player1_score > @player2_score ? @player1_name : @player2_name
  end
end