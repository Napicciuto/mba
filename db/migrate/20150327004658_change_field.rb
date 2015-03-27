class ChangeField < ActiveRecord::Migration
  def change
  	remove_column :workers, :industry
  end
end
