require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do 
  	it "should have a valid factory" do 
  		u = build(:user)
  		expect(u.save).to eq true
  	end
  	it { should have_one(:military_experience) }
  	it { should have_one(:address) }
  	it { should have_many(:educations) }
  	it { should have_many(:work_histories) }
		it { should have_and_belong_to_many(:skills) }
		it { should validate_presence_of(:first_name) }	
		it { should validate_presence_of(:last_name) }	
		it { should validate_inclusion_of(:verified).in_array([true, false]) }	
		it { should validate_presence_of(:email) }	
		# it { should validate_uniqueness_of(:email) }	
		it { should_not allow_value("blah").for(:email) }
		it { should allow_value("test@test.com").for(:email) }
  end

  describe "test password authentication" do
  	it "should be able to set a password" do
  		u = build(:user)
  		expect(u.respond_to?(:password)).to eq true
  	end
  	it "should be able to authenticate" do 
  		u = build(:user)
  		u.password = "password"
  		expect(u.authenticate("password")).to eq u
  		expect(u.authenticate("wrongpassword")).to eq false
  	end
	end

end
