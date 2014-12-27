class FixUsers < ActiveRecord::Migration
  def change
    add_column :users, :subtype, :string

  end
end
