require 'rails_helper'

RSpec.describe Type, type: :model do
  describe "validation" do
  	it "should have a valid factory" do
  		type = build(:type)
  		expect(type.save).to eq true
  	end
  	it { should belong_to(:company) }
  	it { should validate_presence_of(:name) }
  end
end
