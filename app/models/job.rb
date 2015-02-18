class Job < ActiveRecord::Base
	
	belongs_to :company

	has_one :employment_type
	has_one :experience
	has_one :jobfunction
	has_one :status

	has_and_belongs_to_many :skills

	accepts_nested_attributes_for :status, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :company, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :jobfunction, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :experience, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :skills, reject_if: :all_blank, allow_destroy: true	

	validates :title, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :description, presence: true
	validates :salary, presence: true
	validates :company, presence: true

end
