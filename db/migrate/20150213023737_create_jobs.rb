class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
    	t.string :title, null: false
    	t.string :city, null: false
    	t.string :state, null: false
    	t.text :description, limit: nil
    	t.string :salary
      t.integer :company_id, null: false
      t.integer :employment_type_id, null: false
      t.integer :experience_id, null: false
      t.integer :jobfunction_id, null: false
      t.integer :status_id, null:false

      t.timestamps null: false
    end
      add_index :jobs, :company_id
      add_foreign_key :jobs, :companies
      add_index :jobs, :employment_type_id
      add_foreign_key :jobs, :employment_types
      add_index :jobs, :experience_id
      add_foreign_key :jobs, :experiences
      add_index :jobs, :jobfunction_id
      add_foreign_key :jobs, :jobfunctions
      add_index :jobs, :status_id
      add_foreign_key :jobs, :statuses      
  end
end
