class AddAssociations < ActiveRecord::Migration
  def change
  	add_column :workers, :degree_id, :integer
  end
end
