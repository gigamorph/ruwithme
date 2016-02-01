class TimelineController < ApplicationController
  def index
    @user = User.find_by(username: session[:username])
    @initial = @user.first_name[0] + @user.last_name[0]

    username = params[:username]
    @patient = User.find_by(username: username)

    json = File.read(File.join(Rails.public_path + "mock/timeline/#{username}.json"))
    @data = JSON.parse(json)
    @appointments = @data['appointments']
  end
end
