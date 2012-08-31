class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :type
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
