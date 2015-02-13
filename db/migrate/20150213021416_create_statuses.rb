class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :name
      t.integer :job_id, null: false
      t.timestamps null: false
    end
      add_index :statuses, :job_id
    	add_foreign_key :statuses, :jobs
  end
end
