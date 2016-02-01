class User < ActiveRecord::Base
  has_many :tracking_relations, class_name: 'Tracking', foreign_key: :tracker_id
  has_many :tracked_relations, class_name: 'Tracking', foreign_key: :tracked_user_id
  has_many :tracked_users, class_name: 'User', through: :tracking_relations
  has_many :trackers, class_name: 'User', through: :tracked_relations
end
