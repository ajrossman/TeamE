class CreateEatEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :user
      t.date :event_date
      t.string :type
      t.timestamps
    end
  end
end
