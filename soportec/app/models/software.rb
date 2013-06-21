class Software < ActiveRecord::Base
  attr_accessible :name, :version

  belongs_to :category
  has_and_belongs_to_many :laboratories
end
