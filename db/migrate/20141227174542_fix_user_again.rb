class FixUserAgain < ActiveRecord::Migration
  def change
    remove_column :users, :subtype, :string
    add_column :users, :actable_id, :integer
    add_column :users, :actable_type, :string
  end
end
