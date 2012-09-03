class AddRoleToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :role, :string
    Account.where(role: nil).update_all(role: :interpreter)
  end
end
