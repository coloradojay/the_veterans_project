require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do 
  	it "should have a valid factory" do 
  		u = build(:user)
  		expect(u.save).to eq true
  	end
		it { should have_and_belong_to_many(:skill) }
  	it { should have_one(:military_experience) }
		it { should validate_presence_of(:first_name) }	
		it { should validate_presence_of(:last_name) }	
		it { should validate_inclusion_of(:verified).in_array([true, false]) }	
		it { should validate_presence_of(:email) }	
		# it { should validate_uniqueness_of(:email) }	
		it { should_not allow_value("blah").for(:email) }
		it { should allow_value("test@test.com").for(:email) }
  end

  describe "some other test" do 

	end

end
