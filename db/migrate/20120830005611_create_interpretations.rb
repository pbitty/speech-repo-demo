class CreateInterpretations < ActiveRecord::Migration
  def change
    create_table :interpretations do |t|
      t.integer :speech_id

      t.timestamps
    end
  end
end
