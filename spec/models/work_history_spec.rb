require 'rails_helper'

RSpec.describe WorkHistory, type: :model do
  describe "validation" do 
  	it "should have a valid factory" do
  	edd = build(:work_history)
  	expect(edd.save).to eq true 
  end
  it { should belong_to(:user) }
  it { should validate_presence_of(:company_name) }
  it { should validate_presence_of(:job_title) }
end
end
