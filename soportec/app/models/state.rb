class State < ActiveRecord::Base
  attr_accessible :description

  belongs_to :laboratory
end
