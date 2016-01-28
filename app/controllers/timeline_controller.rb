class TimelineController < ApplicationController
  def index
    json = File.read(File.join(Rails.public_path + "mock/users.json"))
    @users = JSON.parse(json)
    @user = @users[session[:username]]
    @initial = @user['first_name'][0] + @user['last_name'][0]

    user_id = params[:user_id]

    @patient = @users['superman']

    path = Rails.public_path + "/mock/#{user_id}.json"
    json = File.read(File.join(Rails.public_path + "mock/#{user_id}.json"))
    @data = JSON.parse(json)
    @appointments = @data['appointments']
  end
end
