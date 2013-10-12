class CreateExerciseEvents < ActiveRecord::Migration
  def change
    create_table :exercise_events do |t|

      t.timestamps
    end
  end
end
