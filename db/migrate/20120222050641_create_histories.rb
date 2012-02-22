class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer  :job_id
      t.datetime :start_at
      t.datetime :last_ack_at
      t.datetime :finish_at
      t.string   :result
      t.timestamps
    end
    add_index :histories, :job_id
  end
end
