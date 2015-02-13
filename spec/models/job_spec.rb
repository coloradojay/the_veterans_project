require 'rails_helper'

RSpec.describe Job, type: :model do
	describe "validations" do 
	  	it "should have a valid factory" do
		  	comp = build(:job)
		  	expect(comp.save).to eq true 
		  end
		  it { should have_one(:experience) }
  		it { should have_one(:employmenttype) }
  		it { should have_one(:jobfunction) }
  		it { should have_one(:status) }  		  
	end
end
