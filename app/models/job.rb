class Job < ActiveRecord::Base
  validates :name, :presence => true
  has_attached_file :jar
end
