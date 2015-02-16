class AddUserToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :user_id, :integer
    add_index :companies, :user_id
    add_foreign_key :companies, :users
  end
end
