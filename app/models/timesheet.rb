class Timesheet < ActiveRecord::Base
  belongs_to :assignment

   validates :assignment, :time, presence: true
end
