class RemoveEmailFromCompanies < ActiveRecord::Migration
  def change
  	remove_column :companies, :email, :string
  	remove_column :companies, :password_digest, :string
  end
end
