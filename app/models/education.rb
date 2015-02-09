class Education < ActiveRecord::Base

	belongs_to :user

	validates :school_name, presence: true
	validates :user, presence: true	
end
