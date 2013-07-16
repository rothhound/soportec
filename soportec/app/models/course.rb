class Course < ActiveRecord::Base
  attr_accessible :code, :name, :eap_id, :group_id

  has_and_belongs_to_many :professors
  belongs_to :eap
  belongs_to :group
  has_many :schedules

  validates :code, :name, :eap_id, :group_id, presence: true
  validates :code, numericality: {greater_than_or_equal_to: 201001}
  validates :code, uniqueness: true
end
