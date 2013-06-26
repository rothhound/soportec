class Category < ActiveRecord::Base
  attr_accessible :description

  has_many :software
end
