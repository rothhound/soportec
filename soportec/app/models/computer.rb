class Computer < ActiveRecord::Base
  attr_accessible :display, :keyboard, :motherboard, :mouse, :processor, :ram, :videocard
  
  has_one :laboratory
end
