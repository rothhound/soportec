class Course < ActiveRecord::Base
  attr_accessible :code, :name

  has_and_belongs_to_many :professors
  belongs_to :eap
  belongs_to :group
  has_many :schedules
end
