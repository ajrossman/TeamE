class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.float :lat
      t.float :long
      t.datetime :date
      t.string :description
      t.string :link

      t.timestamps
    end
  end
end
