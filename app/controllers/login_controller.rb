class LoginController < ApplicationController
  def index
    puts "User: #{session[:username]}"
  end

  def auth
    json = File.read(File.join(Rails.public_path + "mock/users.json"))
    users = JSON.parse(json)

    username = params['p']['username']
    #pw = params['p']['password']

    if users[username]
      session[:username] = username
      redirect_to '/home'
    else
      render :index
    end
  end
end
