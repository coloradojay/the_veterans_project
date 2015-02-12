class CreateJoinTableCompanyVetPrograms < ActiveRecord::Migration
  def change
  	create_table :companies_vet_programs, id: false do |t|
  		t.belongs_to :company, index: true
  		t.belongs_to :vet_program, index: true
  	end
  end
end
