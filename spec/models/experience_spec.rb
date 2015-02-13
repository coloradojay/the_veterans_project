require 'rails_helper'

RSpec.describe Experience, type: :model do
  describe "validation" do
  	it "should have a valid factory" do
  		ex = build(:experience)
  		expect(ex.save).to eq true
  	end
  	it { should belong_to(:job) }
  	it { should validate_presence_of(:name) }
  end
end
