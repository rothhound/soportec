class Software < ActiveRecord::Base
  attr_accessible :name, :version

  belongs_to :category

  has_many :laboratories_softwares
  has_many :laboratories, :through => :laboratories_softwares
end
