class AddCompanyToType < ActiveRecord::Migration
  def change
  	add_column :companies, :type_id, :integer
  	add_index :companies, :type_id
    add_foreign_key :companies, :types
  end
end
