class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.boolean :active
      t.string :arguments
      t.integer :schedule_min
      t.text :description

      t.timestamps
    end
  end
end
