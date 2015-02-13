class CreateJoinTableJobUser < ActiveRecord::Migration
  def change
  	create_table :jobs_skills, id: false do |t|
  		t.belongs_to :job, index: true
  		t.belongs_to :skill, indext: true
  	end
  end
end
