require 'rails_helper'

RSpec.describe Jobfunction, type: :model do
	describe "validations" do 
	  	it "should have a valid factory" do
		  	comp = build(:jobfunction)
		  	expect(comp.save).to eq true 
		  end
	  	it { should belong_to(:job) }
	  	it { should validate_presence_of(:name) }
	  end 
end
