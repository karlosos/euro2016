class Match < ActiveRecord::Base
  belongs_to :team_a,    class_name: "Team", foreign_key: "team_a_id"
  belongs_to :team_b, class_name: "Team", foreign_key: "team_b_id"
  has_many :predictions, dependent: :destroy

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
end
