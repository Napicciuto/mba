class Worker < ActiveRecord::Base

  WORKER_DEGREE = %w(MBA-Currently \ Enrolled MBA-Graduated Bachelors Post \ Graduate Other)
  WORKER_FOCUS = %w(Management Accounting Economics Finance Government \ Relations Marketing Entrepreneurship Operations IT Distribution Manufacturing Sales Health Care Leadership Research International Business Communications Other')
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
