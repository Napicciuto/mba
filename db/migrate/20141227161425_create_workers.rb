class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
    	t.string :school
    	t.string :degree
    	t.string :major
    	t.string :industry
    	t.string :experience
    	t.integer :experience_year
    	t.text :skills

      t.timestamps
    end
  end
end
