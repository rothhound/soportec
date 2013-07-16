class LaboratorySoftware < ActiveRecord::Base
  belongs_to :laboratory
  belongs_to :software
  # attr_accessible :title, :body
end
