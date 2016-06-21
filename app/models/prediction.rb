class Prediction < ActiveRecord::Base
  belongs_to :user
  belongs_to :match
  has_many :logs
  before_update :prevent_update, :if => :score_a_changed?
  before_update :prevent_update, :if => :score_b_changed?
  after_update :create_log
  after_update :update_predicted_result

  validates :score_a, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true
  validates :score_b, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true
  # on update create logs
  def update_points
    if self.match.finished? && score_a.present? && score_b.present?
      update_attributes(:points => get_points_for_prediction(self))
      update_attributes(:is_good_result => check_if_same_result?(self, self.match))
      update_attributes(:is_exact_score => check_if_equal_score?(self, self.match))
    else
      update_attributes(:points => nil)
      update_attributes(:is_good_result => nil)
      update_attributes(:is_exact_score => nil)
    end
  end

  def update_predicted_result(special_use_in_rb = false)
    if self.score_a_changed? || self.score_b_changed? || special_use_in_rb
      if self.score_a.present? && self.score_b.present?
        update_column(:predicted_result, get_result_for_score(self))
      end
    end
  end

  def good_result?
    prediction_result = get_result_for_score(self)
    match_result = get_result_for_score(self.match)
    return true if match_result == prediction_result
    return false
  end

  private
  def create_log
    if self.score_a_changed? || self.score_b_changed?
      Log.create(prediction: self, user: self.user, score_a: self.score_a, score_b: self.score_b)
    end
  end

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
    else
      return nil
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

  def prevent_update
    return true if self.match.date > DateTime.now
    false
  end
end
