class Match < ActiveRecord::Base
  belongs_to :team_a,    class_name: "Team", foreign_key: "team_a_id"
  belongs_to :team_b, class_name: "Team", foreign_key: "team_b_id"
  has_many :predictions, dependent: :destroy

  def predictable?
    if DateTime.now < self.date
      true
    else
      false
    end
  end
end
