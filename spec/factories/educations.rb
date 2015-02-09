FactoryGirl.define do
  factory :education do
  	school_name "UCLA"
		yr_attended_from "01/01/2005"
		yr_attended_to "06/01/2009"
		degree_name "Bachelor of Science"
		field_of_study "Computer Science"
		description "Degree program with hints of AngularJS and ROR"    
  	user
  end

end
