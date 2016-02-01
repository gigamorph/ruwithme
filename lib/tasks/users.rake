desc "Load mock users into database"
task load_mock_users: [:environment] do
  puts Rails.root
  File.open("#{Rails.public_path}/mock/users.json", 'r') do |f|
    data = JSON.parse(f.read)
    data.each do |user_data|
      u = User.create(user_data.slice('username', 'first_name', 'middle_name', 'last_name'))
      u.save
    end
    data.each do |user_data|
      username = user_data['username']
      tracking = user_data['tracking']
      u = User.find_by(username: username)
      tracking.each do |tracked_username|
        tracked = User.find_by(username: tracked_username)
        u.tracked_users << tracked
      end
      u.save
    end
  end
end

desc "Delete all users"
task delete_all_users: [:environment] do
  User.all.each do |user|
    user.delete
  end
end
