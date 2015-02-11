class User < ActiveRecord::Base

	has_one :military_experience
	has_one :address

	has_many :educations
	has_many :work_histories
	
	has_and_belongs_to_many :skills

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :verified, inclusion: { in: [true, false] }
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

end
