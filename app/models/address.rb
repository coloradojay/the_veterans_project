class Address < ActiveRecord::Base

	belongs_to :user

	validates :address1, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :zip, presence: true
	validates :user, presence: true

	def full_address
	 	unless address2.empty?
	 		"#{address1}\n#{address2}\n #{city}, #{state}. #{zip}"
	 	else
	 		"#{address1}\n #{city}, #{state}. #{zip}"
	 	end
	end
end
