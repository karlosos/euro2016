class StaticPagesController < ApplicationController
  def home
    @LastMatches = Match.where("date < ?" , DateTime.now).order(date: :desc).limit(5).reverse
    @NextMatches = Match.where("date > ?" , DateTime.now).order(:date).limit(5)
    @BestUsers = User.order_by_points.limit(5)
    @Logs = Log.last_logs
  end

  def user_standings
    @Users = User.order_by_points
  end

  def logs
    @Logs = Log.all_logs.paginate(:page => params[:page], :per_page => 30)
  end
end
