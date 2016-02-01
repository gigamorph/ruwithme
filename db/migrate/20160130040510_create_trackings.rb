class CreateTrackings < ActiveRecord::Migration
  def change
    create_table :trackings do |t|
      t.integer :tracker_id
      t.integer :tracked_user_id
      t.timestamps
    end
  end
end
