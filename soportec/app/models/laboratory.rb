class Laboratory < ActiveRecord::Base
  attr_accessible :name, :airConditioning, :capacity, :floor, :numComputers, :number, :projector, :sound, :user_id

  has_one :computer
  has_many :schedules
  has_one :state
  belongs_to :user

  has_many :laboratories_softwares
  has_many :softwares, :through => :laboratories_softwares

  validates :user_id, uniqueness: true
  #scope :unassigned, where(:user_id => nil)
  #named_scope :assigned, :conditions => {:user_id != nil}
end
