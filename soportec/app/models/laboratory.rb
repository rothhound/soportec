class Laboratory < ActiveRecord::Base
  attr_accessible :airConditioning, :capacity, :floor, :numComputers, :number, :projector, :sound
  
  belongs_to :computer
  belongs_to :state
  
  has_and_belongs_to_many :softwares

  has_many :schedules
  #has_many :courses, :through => :schedules
end
