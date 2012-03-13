class AddScheduleToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :schedule, :string
  end
end
