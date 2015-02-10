class Skill < ActiveRecord::Base
	has_and_belongs_to_many :user

	validates :skill_name, presence: true

end
