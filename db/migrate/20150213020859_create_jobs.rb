class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
    	t.string :title, null: false
    	t.string :city, null: false
    	t.string :state, null: false
    	t.text :description, limit: nil
    	t.string :salary
      t.integer :company_id, null: false

      t.timestamps null: false
    end
      add_index :jobs, :company_id
      add_foreign_key :jobs, :companies
  end
end
