class Detachpaperclip < ActiveRecord::Migration
  def up
    remove_column :jobs, :jar_file_name
    remove_column :jobs, :jar_content_type
    remove_column :jobs, :jar_file_size
    remove_column :jobs, :jar_updated_at
    add_column :jobs, :jar_path, :string
  end

  def down
    add_column :jobs, :jar_file_name, :string
    add_column :jobs, :jar_content_type, :string
    add_column :jobs, :jar_file_size, :integer
    add_column :jobs, :jar_updated_at, :datetime
  end
end
