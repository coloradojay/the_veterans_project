require 'rails_helper'

RSpec.describe Company, type: :model do
  describe "validations" do 
  	it "should have a valid factory" do
	  	comp = build(:company)
	  	expect(comp.save).to eq true 
	  end
	  it { should belong_to(:type) }
	  it { should belong_to(:sector) }
	  it { should have_many(:jobs) }
	  it { should have_and_belong_to_many(:vet_programs) }
	  it { should validate_presence_of(:name) }	
	  it { should validate_presence_of(:address1) }	
	  it { should validate_presence_of(:city) }	
	  it { should validate_presence_of(:state) }	
	  it { should validate_presence_of(:zip) }	
	  it { should validate_presence_of(:num_employees) }	
	  it { should validate_presence_of(:description) }	
	  it { should validate_presence_of(:website) }
	  it { should validate_presence_of(:contact_name)}
	  it { should validate_presence_of(:contact_position)}
	  it { should validate_presence_of(:contact_email)}
	  it { should validate_presence_of(:contact_phone)}
	  it { should validate_inclusion_of(:verified).in_array([true, false]) }	
  end
end
