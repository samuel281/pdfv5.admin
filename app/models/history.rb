class History < ActiveRecord::Base
  belongs_to :job
  has_many :logs
end
