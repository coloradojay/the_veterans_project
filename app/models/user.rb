class User < ActiveRecord::Base

	has_one :military_experience
	has_one :address
	has_many :education

	has_many :work_history

	has_and_belongs_to_many :skill

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :verified, inclusion: { in: [true, false] }
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

end
