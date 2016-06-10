class StaticPagesController < ApplicationController
  def home
    @LastMatches = Match.where("date < ?" , DateTime.now).order(:date).limit(5)
    @NextMatches = Match.where("date > ?" , DateTime.now).order(:date).limit(5)
    @BestUsers = User.order_by_points
    @Logs = Log.last_logs
  end
end
