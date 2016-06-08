require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  def setup
    @team_1 = Team.create(name: "Polska", flag_url: "")
    @team_1 = Team.create(name: "Polska", flag_url: "")
    @date_next = DateTime.now + 10.days
    @date_last = DateTime.now - 5.days
    @match_next = Match.create(team_a: @team_1, team_b: @team_2, date: @date_next)
    @match_last = Match.create(team_a: @team_1, team_b: @team_2, date: @date_last)
    @prediction_last = Prediction.create(match: @match_last, score_a: 1, score_b: 2)
    @prediction_next = Prediction.create(match: @match_next, score_a: 1, score_b: 2)
    @prediction_last_2 = Prediction.create(match: @match_last, score_a: 1, score_b: 2)
  end

  test "triggers predictions update points on update" do
    @match_last.score_a = 3
    @match_last.score_b = 5
    @match_last.save
    assert @match_last.predictions.last.points.present?
  end
end
