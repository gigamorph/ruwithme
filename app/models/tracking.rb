class Tracking < ActiveRecord::Base
  belongs_to :tracker, class_name: 'User'
  belongs_to :tracked_user, class_name: 'User'
end
