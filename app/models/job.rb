class Job < ActiveRecord::Base
	
	belongs_to :company

	has_one :employment_type
	has_one :experience
	has_one :jobfunction
	has_one :status

	has_and_belongs_to_many :skills

	validates :title, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :description, presence: true
	validates :salary, presence: true
	validates :company, presence: true
end
