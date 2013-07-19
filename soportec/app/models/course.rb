class Course < ActiveRecord::Base
  attr_accessible :code, :name, :eap_id, :group_id

  belongs_to :eap
  belongs_to :group
  has_many :schedules
  has_and_belongs_to_many :professors
  accepts_nested_attributes_for :professors

  validates :code, :name, :eap_id, :group_id, presence: true
  validates :code, numericality: {greater_than_or_equal_to: 201001}
  validates :code, :name, :eap_id, :group_id, uniqueness: true
end
