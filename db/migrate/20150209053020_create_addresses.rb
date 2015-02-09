class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
    	t.string :address1, null: false
    	t.string :address2
    	t.string :city, null: false
 			t.string :state, null: false
 			t.string :zip, null: false
 			t.integer :user_id, null: false

      t.timestamps null: false
    end
    	add_index :addresses, :user_id
    	add_foreign_key :addresses, :users
  end
end
