class User < ActiveRecord::Base
  has_many :watched, :class_name => "User", :foreign_key => "watcher_id"
  belongs_to :watcher, :class_name => "User", :foreign_key => "watcher_id"
end
