class CreateTimesheets < ActiveRecord::Migration
  def change
    create_table :timesheets do |t|
      t.integer :assignment_id, index: true
      t.text :description
      t.decimal :time, precision: 5, scale: 2

      t.timestamps
    end
  end
end
