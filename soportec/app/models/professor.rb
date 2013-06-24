class Professor < ActiveRecord::Base
  attr_accessible :code, :lastname, :name

  has_and_belongs_to_many :courses
end
