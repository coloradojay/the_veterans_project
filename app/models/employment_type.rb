class EmploymentType < ActiveRecord::Base

	has_many :jobs

	validates :name, presence: true
end
