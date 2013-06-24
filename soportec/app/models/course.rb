class Course < ActiveRecord::Base
  attr_accessible :code, :name

  has_and_belongs_to_many :professors
  belongs_to :eap
end
