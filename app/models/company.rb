class Company < ActiveRecord::Base

	belongs_to :user
	belongs_to :type
	belongs_to :sector
	has_many :jobs
	has_and_belongs_to_many :vet_programs

	accepts_nested_attributes_for :type, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :vet_programs, reject_if: :all_blank, allow_destroy: true

	validates :name, presence: true
	validates :address1, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :zip, presence: true
	validates :website, presence: true
	validates :num_employees, presence: true
	validates :description, presence: true
	validates :contact_name, presence: true
	validates :contact_position, presence: true
	validates :contact_email, presence: true	
	validates :contact_phone, presence: true
	validates :verified, inclusion: { in: [true, false] }

end
