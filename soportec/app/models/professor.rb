class Professor < ActiveRecord::Base
  attr_accessible :code, :lastname, :name, :courses_attributes
  
  has_and_belongs_to_many :courses
  accepts_nested_attributes_for :courses, :reject_if => :all_blank, :allow_destroy => true
end
