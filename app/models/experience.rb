class Experience < ActiveRecord::Base

	belongs_to : job

	validates :name, presence: true
	validates :job, presence: true	
end
