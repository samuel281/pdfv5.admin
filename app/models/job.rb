class Job < ActiveRecord::Base
  has_many :histories
  validates :name, :presence => true
end
