class AddTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :business, :boolean, default: false, null: false
  end
end
