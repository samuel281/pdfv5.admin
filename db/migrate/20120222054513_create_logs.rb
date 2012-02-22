class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.references :history
      t.string :log_type
      t.string :message

      t.timestamps
    end
    add_index :logs, :history_id
  end
end
