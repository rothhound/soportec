class Professor < ActiveRecord::Base
  attr_accessible :code, :lastname, :name

  belongs_to :course
end
