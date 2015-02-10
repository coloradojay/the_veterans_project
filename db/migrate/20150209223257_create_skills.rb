class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
    	t.string :skill_name, null: false

      t.timestamps null: false
    end
    create_table :users_skills, id: false do |t|
  		t.belongs_to :users, index: true
  		t.belongs_to :skills, index: true
  	end

  end
end
