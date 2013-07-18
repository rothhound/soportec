class Software < ActiveRecord::Base
  attr_accessible :name, :version, :category_id

  belongs_to :category

  has_many :laboratories_softwares
  has_many :laboratories, :through => :laboratories_softwares
end
