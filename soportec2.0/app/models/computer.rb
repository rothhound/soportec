class Computer < ActiveRecord::Base
  attr_accessible :display, :keyboard, :motherboard, :mouse, :processor, :ram, :videocard
end
