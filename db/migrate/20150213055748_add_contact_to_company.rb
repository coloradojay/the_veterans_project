class AddContactToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :contact_name, :string
    add_column :companies, :contact_position, :string
    add_column :companies, :contact_email, :string
    add_column :companies, :contact_phone, :string
  end
end
