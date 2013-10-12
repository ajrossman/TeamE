class ChangeSuggestionAttribuites < ActiveRecord::Migration
  def change
  	add_column :suggestions, :what, :string
  	add_column :suggestions, :where, :string
  	add_column :suggestions, :why, :string
  end
end
