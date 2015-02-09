class MilitaryExperience < ActiveRecord::Base

	has_one :user

	validates :branch, presence: true
	validates :mos, presence: true

end