class CreateJobfunctions < ActiveRecord::Migration
  def change
    create_table :jobfunctions do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
