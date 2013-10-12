class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :eat_streak
      t.integer :exercise_streak
      t.integer :outdoor_streak
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
