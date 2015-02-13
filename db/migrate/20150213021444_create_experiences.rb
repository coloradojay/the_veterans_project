class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :name
      t.integer :job_id, null: false

      t.timestamps null: false
    end
      add_index :experiences, :job_id
    	add_foreign_key :experiences, :jobs
  end
end
