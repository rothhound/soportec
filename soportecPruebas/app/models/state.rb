class State < ActiveRecord::Base
  attr_accessible :description

  has_many :laboratories
end
