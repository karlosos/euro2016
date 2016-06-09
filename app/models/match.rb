class Match < ActiveRecord::Base
  belongs_to :team_a,    class_name: "Team", foreign_key: "team_a_id"
  belongs_to :team_b, class_name: "Team", foreign_key: "team_b_id"
  has_many :predictions, dependent: :destroy
  has_many :broadcasts
  has_many :channels, :through => :broadcasts
  before_update :set_old_date
  #before_create :set_default_date
  after_update do |match|
    for prediction in match.predictions
      prediction.update_points
    end
  end

  def predictable?
    if DateTime.now < self.date
      true
    else
      false
    end
  end

  def finished?
    if self.score_a && self.score_b
      true
    else
      false
    end
  end

  def set_default_date
    self.date = DateTime.now
  end

  def set_old_date
    if self.date_changed? && !self.date.present?
      self.date = self.date_was
    end
  end

  def get_result
    if self.score_a.nil? || self.score_b.nil?
      return nil
    elsif self.score_a > self.score_b
      return 1
    elsif self.score_a < self.score_b
      return 2
    elsif self.score_a == self.score_b
      return 0
    end
  end
end
