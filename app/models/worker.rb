class Worker < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :degree
  has_and_belongs_to_many :industries
  has_many :assignments

  accepts_nested_attributes_for :industries, allow_destroy: true
end
