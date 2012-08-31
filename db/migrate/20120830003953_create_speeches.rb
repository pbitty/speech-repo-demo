class CreateSpeeches < ActiveRecord::Migration
  def change
    create_table :speeches do |t|
      t.string :topic
      t.text :context

      t.timestamps
    end
  end
end
