class Professor < ActiveRecord::Base
  attr_accessible :code, :lastname, :name, :course_id

  belongs_to :course
end
