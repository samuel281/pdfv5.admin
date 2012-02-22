class AddAttachmentJarToJobs < ActiveRecord::Migration
  def self.up
    add_column :jobs, :jar_file_name, :string
    add_column :jobs, :jar_content_type, :string
    add_column :jobs, :jar_file_size, :integer
    add_column :jobs, :jar_updated_at, :datetime
  end

  def self.down
    remove_column :jobs, :jar_file_name
    remove_column :jobs, :jar_content_type
    remove_column :jobs, :jar_file_size
    remove_column :jobs, :jar_updated_at
  end
end
