class Reservation < ActiveRecord::Base
  attr_accessible :dateR, :numHours, :reason, :responsible
  
  has_one :schedule
end
