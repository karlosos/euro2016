require 'test_helper'

class PredictionTest < ActiveSupport::TestCase
  def setup
    @team_1 = Team.create(name: "Polska", flag_url: "")
    @team_1 = Team.create(name: "Polska", flag_url: "")
    @date_next = DateTime.now + 10.days
    @date_last = DateTime.now - 5.days
    @match_next = Match.create(team_a: @team_1, team_b: @team_2, date: @date_next)
    @match_last = Match.create(team_a: @team_1, team_b: @team_2, date: @date_last)
    @prediction_last = Prediction.create(match: @match_last, score_a: 1, score_b: 2)
    @prediction_next = Prediction.create(match: @match_next, score_a: 1, score_b: 2)
  end
  # test "the truth" do
  #   assert true
  # end
  test "score cannot be less than 0" do
    @prediction_last.score_a = -1
    assert_not @prediction_last.valid?

    @prediction_next.score_b = -1
    assert_not @prediction_next.valid?
  end

  test "score cannot be a NaN" do
    @prediction_last.score_a = "hehe"
    assert_not @prediction_last.valid?

    @prediction_next.score_b = "0x102f"
    assert_not @prediction_next.valid?
  end

  test "points update after match update" do
      @match_last.score_a = 3
      @match_last.score_b = 1
      @match_last.save
      @prediction_last.reload
      assert @prediction_last.points.present?
  end

  test "points are null before match update" do
    assert_not @prediction_last.points.present?
  end
end
