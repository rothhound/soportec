class Day < ActiveRecord::Base
  attr_accessible :description
  
  has_one :schedule
end
