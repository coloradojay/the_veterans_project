class CreateJobfunctions < ActiveRecord::Migration
  def change
    create_table :jobfunctions do |t|
      t.string :name
      t.integer :job_id, null: false      

      t.timestamps null: false
    end
      add_index :jobfunctions, :job_id
    	add_foreign_key :jobfunctions, :jobs    
  end
end
