class CreateEatEvents < ActiveRecord::Migration
  def change
    create_table :eat_events do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
