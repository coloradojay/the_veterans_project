class Address < ActiveRecord::Base

	belongs_to :user

	validates :address1, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :zip, presence: true
	validates :user, presence: true
end
