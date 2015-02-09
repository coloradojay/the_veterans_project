class MilitaryExperience < ActiveRecord::Base

	belongs_to :user

	validates :branch, presence: true
	validates :mos, presence: true

end