class CreateVetPrograms < ActiveRecord::Migration
  def change
    create_table :vet_programs do |t|
    	t.string :name, null: false
    	t.string :website
    	
      t.timestamps null: false
    end

  end
end
