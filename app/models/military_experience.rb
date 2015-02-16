class MilitaryExperience < ActiveRecord::Base

	belongs_to :user

	validates :user, presence: true
	validates :branch, presence: true
	validates :mos, presence: true
	
end