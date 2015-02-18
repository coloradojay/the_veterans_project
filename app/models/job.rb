class Job < ActiveRecord::Base
	
	belongs_to :company
	belongs_to :employment_type
	belongs_to :experience
	belongs_to :jobfunction
	belongs_to :status

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
	validates :employment_type, presence: true
	validates :experience, presence: true
	validates :jobfunction, presence: true
	validates :status, presence: true

end
