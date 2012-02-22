class Job < ActiveRecord::Base
  has_many :histories
  validates :name, :presence => true
  has_attached_file :jar
end
