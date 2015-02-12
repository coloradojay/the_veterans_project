class CreateSectors < ActiveRecord::Migration
  def change
    create_table :sectors do |t|
      t.string :name
 			t.integer :company_id, null: false

      t.timestamps null: false
    end
    	add_index :sectors, :company_id
    	add_foreign_key :sectors, :companies
  end
end
