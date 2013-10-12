class CreateOutdoorEvents < ActiveRecord::Migration
  def change
    create_table :outdoor_events do |t|

      t.timestamps
    end
  end
end
