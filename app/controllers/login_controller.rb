class LoginController < ApplicationController
  def index
    puts "User: #{session[:username]}"
  end

  def auth
    username = params['p']['username']
    #pw = params['p']['password']

    user = User.find_by(username: username)

    if user
      session[:username] = username
      redirect_to '/home'
    else
      render :index
    end
  end
end
