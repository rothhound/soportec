class Schedule < ActiveRecord::Base
  attr_accessible :end, :start, :day_id, :course_id, :laboratory_id

  belongs_to :day
  belongs_to :laboratory
  belongs_to :course
end
