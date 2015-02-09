class UsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :first_name, null: false
  		t.string :last_name, null: false
  		t.string :email, null: false
  		t.string :phone_number
  		t.boolean :verified, default: false, null: false

  		t.timestamps null: false
  	end
  end
end
