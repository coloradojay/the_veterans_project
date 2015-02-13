class Job < ActiveRecord::Base
	has_one :company
	has_one :employment_type
	has_one :experience
	has_one :jobfunction
	has_one :status

	validates :title, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :description, presence: true
	validates :salary, presence: true
end
