class User < ActiveRecord::Base
	has_secure_password
	has_one :military_experience
	has_one :address
	has_many :educations
	has_many :work_histories
	has_and_belongs_to_many :skills

	accepts_nested_attributes_for :educations, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :work_histories, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :skills, reject_if: :all_blank, allow_destroy: true

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :verified, inclusion: { in: [true, false] }
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

end
