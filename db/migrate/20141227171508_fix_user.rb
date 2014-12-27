class FixUser < ActiveRecord::Migration
  def change
  	drop_table :workers
  	create_table :workers, :inherits => :user do |t|
    	t.string :school
    	t.string :degree
    	t.string :major
    	t.string :industry
    	t.string :experience
    	t.integer :experience_year
    	t.text :skills
      t.timestamps
    end

  	drop_table :companies
    create_table :companies, :inherits => :user do |t|
      t.string :title
      t.string :company_name
      t.string :company_industry
      t.text :company_description
      t.integer :years_in_business
      t.timestamps
    end
  end
end
