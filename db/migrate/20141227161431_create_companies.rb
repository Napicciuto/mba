class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :title
      t.string :company_name
      t.string :company_industry
      t.text :company_description
      t.integer :years_in_business

      t.timestamps
    end
  end
end
