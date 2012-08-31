class AddIndexToChoiceName < ActiveRecord::Migration
  def change
    add_index :choices, [:name, :type], unique: true
  end
end
