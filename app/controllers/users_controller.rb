class UsersController < ApplicationController
  def show
    @user = User.find_by_username(params[:username])
    @matches = Match.all.order(:date)
    if @user.nil? == true
      flash[:error] = "Nie ma takiego uzytkownika"
      redirect_to root_url
    end
  end
end
