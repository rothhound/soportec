class CourseProfessor < ActiveRecord::Base
  belongs_to :course
  belongs_to :professor
  # attr_accessible :title, :body
end
