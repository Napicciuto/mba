class CreateDegrees < ActiveRecord::Migration
  def change
    create_table :degrees do |t|
      t.string :degree
      t.boolean :active

      t.timestamps
    end
  end
end
