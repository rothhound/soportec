class State < ActiveRecord::Base
  attr_accessible :description, :laboratory_id

  belongs_to :laboratory
end
