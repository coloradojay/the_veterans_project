class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
 			t.integer :company_id, null: false

      t.timestamps null: false
    end
    	add_index :types, :company_id
    	add_foreign_key :types, :companies
    end
  end
end
