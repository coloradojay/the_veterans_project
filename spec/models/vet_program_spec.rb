require 'rails_helper'

RSpec.describe VetProgram, type: :model do
  describe "validation" do 
  	it "should have a valid factory" do 
  		vp = build(:vet_program)
  		expect(vp.save).to eq true
  	end
  	it { should have_and_belong_to_many(:companies) }
  	it { should validate_presence_of(:name) }
  end
end
