require 'rails_helper'

RSpec.describe MilitaryExperience, type: :model do
  describe "validations" do
  	it "should have a valid factory" do 
  		me = build(:military_experience)
  		expect(me.save).to eq true
  	end 
		it { should belong_to(:user) }  	
  	it { should validate_presence_of(:branch) } 
  	it { should validate_presence_of(:mos) } 
  end

end
