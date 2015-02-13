class Company < ActiveRecord::Base
	has_secure_password

	has_one :type
	has_one :sector
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
	validates :verified, inclusion: { in: [true, false] }
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

end
