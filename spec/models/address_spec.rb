require 'rails_helper'

RSpec.describe Address, type: :model do
 describe "validation" do 
 	it "should have a valid factory"  do 
		address = build(:address)
		expect(address.save).to eq true 	
 	end
 	it { should belong_to(:user) }
 	it { should validate_presence_of(:address1) }
 	it { should validate_presence_of(:city) }
 	it { should validate_presence_of(:state) }
 	it { should validate_presence_of(:zip) }
 end

end
