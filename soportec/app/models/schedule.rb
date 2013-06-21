class Schedule < ActiveRecord::Base
  attr_accessible :day, :end, :star
  
  belongs_to :reservation

  belongs_to :laboratory
  belongs_to :course
  
end
