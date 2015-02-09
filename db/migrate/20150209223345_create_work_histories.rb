class CreateWorkHistories < ActiveRecord::Migration
  def change
    create_table :work_histories do |t|
    	t.string :company_name, null: false
    	t.string :job_title, null: false
    	t.string :location
    	t.datetime :start_date
    	t.datetime :end_date
    	t.string :description
      t.timestamps null: false
      t.integer :user_id, null: false
    end
    	add_index :work_histories, :user_id
    	add_foreign_key :work_histories, :users
  end
end
