require 'rails_helper'

RSpec.describe Status, type: :model do
  describe "validation" do
  	it "should have a valid factory" do
  		type = build(:status)
  		expect(type.save).to eq true
  	end
  	it { should belong_to(:job) }
  	it { should validate_presence_of(:name) }
  end
end