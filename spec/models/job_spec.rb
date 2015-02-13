require 'rails_helper'

RSpec.describe Job, type: :model do
  describe "validation" do 
  	it "should have a valid factory" do 
  		j = build(:job)
  		expect(j.save).to eq true
  end
  it { should belong_to(:user) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  
end
