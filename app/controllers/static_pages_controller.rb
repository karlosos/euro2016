class StaticPagesController < ApplicationController
  def home
    @Matches = Match.all
    #@predictions = Prediction.find(:user => current_user.id)
  end
end
