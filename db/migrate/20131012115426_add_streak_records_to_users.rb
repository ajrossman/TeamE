class AddStreakRecordsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :eat_record, :integer
    add_column :users, :exercise_record, :integer
    add_column :users, :outdoor_record, :integer
  end
end
