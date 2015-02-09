class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
    	t.string :school_name, null: false
			t.datetime :yr_attended_from
			t.datetime :yr_attended_to
			t.string :degree_name
			t.string :field_of_study
			t.string :description
			t.integer :user_id, null: false

      t.timestamps null: false
    end
      add_index :educations, :user_id
      add_foreign_key :educations, :users
  end
end
