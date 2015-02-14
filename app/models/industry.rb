class Industry < ActiveRecord::Base
  has_and_belongs_to_many :workers

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }
end
