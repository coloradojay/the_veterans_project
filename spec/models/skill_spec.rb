require 'rails_helper'

RSpec.describe Skill, type: :model do
  describe "validations" do 
  	it "should have a valid factory" do 
  		s = build(:skill)
  		expect(s.save).to eq true
  	end
  	it { should have_and_belong_to_many(:user) }
  	it { should validate_presence_of(:skill_name) }
  end

end