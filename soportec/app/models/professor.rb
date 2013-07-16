class Professor < ActiveRecord::Base
  attr_accessible :code, :lastname, :name

  has_many :courses_professors
  has_many :courses, :through => :courses_professors
end
