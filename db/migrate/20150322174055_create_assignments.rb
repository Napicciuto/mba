class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :project_id, index: true
      t.integer :worker_id, index: true
      t.timestamps
    end
  end
end
