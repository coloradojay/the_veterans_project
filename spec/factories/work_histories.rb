FactoryGirl.define do
  factory :work_history do
    company_name { Faker::Company.name }
    job_title	"Department Manager: #{Faker::Commerce.department}"
    start_date "01/01/2005"
    end_date "06/01/2009"
    location "#{Faker::Address.city}, #{Faker::Address.state}"
    user
  end

end
