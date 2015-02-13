require 'rails_helper'

RSpec.describe Job, type: :model do
  describe "validations" do 
      it "should have a valid factory" do
        j = build(:job)
        expect(j.save).to eq true 
      end
      it { should have_one(:company) }
      it { should have_one(:experience) }
      it { should have_one(:employmenttype) }
      it { should have_one(:jobfunction) }
      it { should have_one(:status) } 
      it { should validate_presence_of(:title) }  
      it { should validate_presence_of(:city) }  
      it { should validate_presence_of(:state) }  
      it { should validate_presence_of(:description) }  
      it { should validate_presence_of(:salary) }  
  end
end
