class Category < ActiveRecord::Base
  attr_accessible :description

  has_one :software
end
