class Assignment < ActiveRecord::Base
  belongs_to :project
  belongs_to :worker
  has_many :timesheets

  validates :project, :worker, presence: true
end
