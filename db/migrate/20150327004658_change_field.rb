class ChangeField < ActiveRecord::Migration
  def change
  	remove_column :workers, :degree
  	remove_column :workers, :industry
  end
end
