class CreateActivityLogEntry < ActiveRecord::Migration
  def change
    create_table :activity_log_entries do |t|
      t.integer :uid
      t.string :data
      t.timestamps
    end
  end
end