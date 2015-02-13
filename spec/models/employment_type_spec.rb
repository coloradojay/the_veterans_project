require 'rails_helper'

RSpec.describe EmploymentType, type: :model do
  describe "validation" do
  	it "should have a valid factory" do
  		type = build(:employmenttype)
  		expect(type.save).to eq true
  	end
  	it { should belong_to(:job) }
  	it { should validate_presence_of(:name) }
  end
end