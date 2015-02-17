class Company < ActiveRecord::Base
	has_secure_password

	belongs_to :user
	belongs_to :type
	belongs_to :sector

	has_many :jobs
	
	has_and_belongs_to_many :vet_programs

	validates :name, presence: true
	validates :address1, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :zip, presence: true
	validates :email, presence: true
	validates :website, presence: true
	validates :num_employees, presence: true
	validates :description, presence: true
	validates :contact_name, presence: true
	validates :contact_position, presence: true
	validates :contact_email, presence: true	
	validates :contact_phone, presence: true
	validates :verified, inclusion: { in: [true, false] }
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

end
