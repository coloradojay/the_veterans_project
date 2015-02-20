# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# EmploymentType.where(name: 'Part-Time').first_or_create!
# EmploymentType.where(name: 'Full-Time').first_or_create!
# EmploymentType.where(name: 'Contractor').first_or_create!

Type.where(name: "Public").first_or_create!
Type.where(name: "Private").first_or_create!

Sector.where(name: "Accounting, tax preparation, book keeping and payroll services").first_or_create!
Sector.where(name: "Legal services").first_or_create!
Sector.where(name: "Oil and gas extraction").first_or_create!
Sector.where(name: "Commercial and industrial machinery and equipment rental and leasing").first_or_create!
Sector.where(name: "Real estate").first_or_create!
Sector.where(name: "Medical").first_or_create!
Sector.where(name: "Management companies").first_or_create!
Sector.where(name: "Technology").first_or_create!
Sector.where(name: "Banking").first_or_create!




