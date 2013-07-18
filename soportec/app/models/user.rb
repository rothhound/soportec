class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # El módulo :registerable no permite registrar usuarios una vez logueados
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :code, :username, :name, :email, :password, :password_confirmation, :remember_me, :role_id
  # attr_accessible :title, :body

  belongs_to :role
  has_one :laboratory
  validates :code, :name, :email, uniqueness: true
  #validates :code, :username, :name, :email, uniqueness: true
end
