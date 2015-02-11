class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
    	t.string :name, null: false
    	t.string :address1, null: false
    	t.string :address2
    	t.string :city, null: false
    	t.string :state, null: false
    	t.string :zip, null: false
    	t.string :email, null: false
    	t.string :phone_number, null: false
    	t.string :website, null: false
    	t.string :facebook
    	t.string :twitter
        t.string :google_plus
    	t.string :password_digest, null: false
    
    	t.text :description, limit: nil
    	t.integer :num_employees, null: false
    	t.boolean :verified, default: false, null: false

      t.timestamps null: false
    end
  end
end
