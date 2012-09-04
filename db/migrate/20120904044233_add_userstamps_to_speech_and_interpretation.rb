class AddUserstampsToSpeechAndInterpretation < ActiveRecord::Migration

  ## This is a hack to get migration helpers to work with change_table
  ActiveRecord::ConnectionAdapters::Table.send(:include, Ddb::Userstamp::MigrationHelper)

  def change
    [:speeches, :interpretations].each do |table_name|
      change_table table_name do |t|
        t.userstamps
      end
    end
  end
end
