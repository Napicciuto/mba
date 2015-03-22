class Project < ActiveRecord::Base
  belongs_to :company
  has_many :assignments
  has_many :timesheets, through: :assignments

  validates :company, :name, presence: true
end
