class Laboratory < ActiveRecord::Base
  attr_accessible :airConditioning, :capacity, :floor, :numComputers, :number, :projector, :sound

  has_one :computer
  has_and_belongs_to_many :softwares
end
