class AddFieldToContact < ActiveRecord::Migration
  def change
  	add_column :contacts, :phone, :string
  	add_column :contacts, :city, :string
  	add_column :contacts, :state, :string
  	add_column :contacts, :zip, :string
  	add_column :contacts, :subject, :string
  end
end
