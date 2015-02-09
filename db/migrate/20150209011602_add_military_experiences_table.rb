class AddMilitaryExperiencesTable < ActiveRecord::Migration
  def change
  	create_table :military_experiences do |t|
  	  t.string :branch, null: false
      t.string :mos, null: false
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps null: false
      t.integer :user_id, null: false
    end
      add_index :military_experiences, :user_id
  end
end
