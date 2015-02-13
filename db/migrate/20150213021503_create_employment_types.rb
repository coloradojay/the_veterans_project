class CreateEmploymentTypes < ActiveRecord::Migration
  def change
    create_table :employment_types do |t|
      t.string :name
      t.integer :job_id, null: false
      t.timestamps null: false
    end
      add_index :employment_types, :job_id
    	add_foreign_key :employment_types, :jobs
  end
end
