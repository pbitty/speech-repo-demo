class AddChoicesToSpeech < ActiveRecord::Migration
  def change
    add_column :speeches, :language_id, :integer
    add_column :speeches, :setting_id, :integer
    add_column :speeches, :difficulty_id, :integer
    add_column :speeches, :speed_id, :integer
  end
end
