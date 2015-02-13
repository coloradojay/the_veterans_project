Tclass CreateJoinTableSkillUser < ActiveRecord::Migration
  def change
    # create_join_table :skills, :users do |t|
      # t.index [:skill_id, :user_id]
      # t.index [:user_id, :skill_id]
    create_table :skills_users, id: false do |t|
      t.belongs_to :skill, index: true
      t.belongs_to :user, index: true
    end
  end
end
