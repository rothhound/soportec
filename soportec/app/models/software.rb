class Software < ActiveRecord::Base
  attr_accessible :name, :version

  has_and_belongs_to_many :laboratories
end
