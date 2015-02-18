require 'rails_helper'

RSpec.describe EmploymentType, type: :model do
  describe "validation" do
  	it "should have a valid factory" do
  		emp = build(:employment_type)
  		expect(emp.save).to eq true
  	end
  	it { should have_many(:jobs) }
  	it { should validate_presence_of(:name) }
  end
end
