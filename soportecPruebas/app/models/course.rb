class Course < ActiveRecord::Base
  attr_accessible :code, :group, :name

  belongs_to :eap
  has_and_belongs_to_many :professors

  has_many :schedules
  #has_many :laboratories, :through => :schedules
end
