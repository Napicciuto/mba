class ChangeField < ActiveRecord::Migration
  def change
  	remove_column :workers, :degree
  	remove_column :workers, :industry
  	add_column :workers, :degree_id, :integer
  end
end
