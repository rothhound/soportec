class Schedule < ActiveRecord::Base
  attr_accessible :end, :start

  belongs_to :day
  belongs_to :laboratory
  belongs_to :course
end
