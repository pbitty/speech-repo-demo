class AddChoicesToInterpretation < ActiveRecord::Migration
  def change
    add_column :interpretations, :language_id, :integer
    add_column :interpretations, :year_of_study_id, :integer
  end
end
