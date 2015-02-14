class CreateIndustryWorkers < ActiveRecord::Migration
  def change
    create_table :industries_workers do |t|
      t.integer :industry_id
      t.integer :worker_id

      t.timestamps
    end
  end
end
