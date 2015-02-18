class RemoveCompanyIdFromType < ActiveRecord::Migration
  def change
		remove_column :types, :company_id
  end
end
