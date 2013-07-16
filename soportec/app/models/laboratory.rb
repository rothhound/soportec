class Laboratory < ActiveRecord::Base
  attr_accessible :airConditioning, :capacity, :floor, :numComputers, :number, :projector, :sound

  has_one :computer
  has_many :schedules
  has_one :state

  has_many :laboratories_softwares
  has_many :softwares, :through => :laboratories_softwares
end
