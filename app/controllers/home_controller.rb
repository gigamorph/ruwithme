class HomeController < ApplicationController
  before_filter :check_login

  def check_login
    unless session[:username]
      redirect_to '/login'
    end
  end

  def index
    @user = User.find_by(username: session[:username])
    @tracked_users = @user.tracked_users
    @initial = @user.first_name[0] + @user.last_name[0]
  end
end
