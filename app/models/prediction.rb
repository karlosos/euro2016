class Prediction < ActiveRecord::Base
  belongs_to :user
  belongs_to :match
  before_update :prevent_update, :if => :score_a_changed?
  before_update :prevent_update, :if => :score_b_changed?
  validates :score_a, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :score_b, numericality: { only_integer: true, greater_than_or_equal_to: 0  }

  def update_points
    if self.match.finished?
      update_attributes(:points => get_points_for_prediction(self))
    end
  end

  private

  def get_points_for_prediction(prediction)
    if !check_if_scores_are_supplied?(prediction)
      return nil
    elsif check_if_equal_score?(prediction, prediction.match)
      return 3
    elsif check_if_same_result?(prediction, prediction.match)
      return 1
    else
      return 0
    end
  end

  def check_if_same_result?(result_1, result_2)
    if get_result_for_score(result_1) == get_result_for_score(result_2)
      return true
    else
      false
    end
  end

  def get_result_for_score(result)
    if result.score_a > result.score_b
      return 1
    elsif result.score_a < result.score_b
      return 2
    elsif result.score_a == result.score_b
      return 0
    end
  end

  def check_if_equal_score?(result_1, result_2)
    if result_1.score_a == result_2.score_a && result_1.score_b == result_2.score_b
      return true
    else
      return false
    end
  end

  def check_if_scores_are_supplied?(prediction)
    if prediction.score_a.present? && prediction.score_b.present?
      return true
    else
      return false
    end
  end

  private
  def prevent_update
    return true if self.match.date > DateTime.now
    false
  end
end
