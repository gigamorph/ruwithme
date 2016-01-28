class HomeController < ApplicationController
  before_filter :check_login

  def check_login
    unless session[:username]
      redirect_to '/login'
    end
  end

  def index
    json = File.read(File.join(Rails.public_path + "mock/users.json"))
    @users = JSON.parse(json)
    @user = @users[session[:username]]
    @watching = @user['watching']
    @initial = @user['first_name'][0] + @user['last_name'][0]
  end
end
