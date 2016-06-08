class Team < ActiveRecord::Base
  has_many :matches_as_team_a,    class_name: 'Match', foreign_key: 'team_a'
  has_many :matches_as_team_b, class_name: 'Match', foreign_key: 'team_b'

  def matches
    Match.where("team_a = ? OR team_b = ?", self.id, self.id)
  end

  def last_matches(limit)
    Match.where("team_a_id = ? OR team_b_id = ?", self.id, self.id).where("date < ?", DateTime.now).order('date ASC').limit(limit)
  end

  def next_matches(limit)
    Match.where("team_a_id = ? OR team_b_id = ?", self.id, self.id).where("date > ?", DateTime.now).order('date ASC').limit(limit)
  end
end
