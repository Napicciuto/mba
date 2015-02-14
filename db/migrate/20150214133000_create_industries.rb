class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.string :industry
      t.boolean :active

      t.timestamps
    end
  end
end
