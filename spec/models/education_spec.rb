require 'rails_helper'

RSpec.describe Education, type: :model do
  describe "validation" do 
  	it "should have a valid factory" do
  	edd = build(:education)
  	expect(edd.save).to eq true 
  end
  it { should belong_to(:user) }
  it { should validate_presence_of(:school_name) }
  it { should validate_presence_of(:user) }
	end
end
