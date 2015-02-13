require 'rails_helper'

RSpec.describe Jobfunction, type: :model do
	describe "validations" do 
	  	it "should have a valid factory" do
		  	jf = build(:jobfunction)
		  	expect(jf.save).to eq true 
		  end
	  	it { should belong_to(:job) }
	  	it { should validate_presence_of(:name) }
	  end 
end
