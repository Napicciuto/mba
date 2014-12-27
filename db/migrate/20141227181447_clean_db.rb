class CleanDb < ActiveRecord::Migration
  def change
  	drop_table :users
  	drop_table :workers
  	drop_table :companies
  end
end
