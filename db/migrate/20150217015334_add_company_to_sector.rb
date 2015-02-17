class AddCompanyToSector < ActiveRecord::Migration
  def change
  	add_column :companies, :sector_id, :integer
    add_index :companies, :sector_id
    add_foreign_key :companies, :sectors  	
  end
end
