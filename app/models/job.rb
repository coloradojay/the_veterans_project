class Job < ActiveRecord::Base
	has_one :company

	validates :title, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :description, presence: true
	validates :salary, presence: true
end
