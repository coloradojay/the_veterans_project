class RemoveSectorCompanyId < ActiveRecord::Migration
  def change
  	remove_column :sectors, :company_id
  end
end
