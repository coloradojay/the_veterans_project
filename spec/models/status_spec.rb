require 'rails_helper'

RSpec.describe Status, type: :model do
  describe "validation" do
  	it "should have a valid factory" do
  		st = build(:status)
  		expect(st.save).to eq true
  	end
  	it { should have_many(:jobs) }
  	it { should validate_presence_of(:name) }
  end
end