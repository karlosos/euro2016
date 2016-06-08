module MatchesHelper
  def get_row_class_for_team_and_result(team, result)
    if team == result
      return "success"
    elsif result == 0
      return 'warning'
    elsif result.nil?
      return "" 
    else
      return 'danger'
    end
  end
end
