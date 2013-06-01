class Usuario < ActiveRecord::Base
  attr_accessible :apellidos, :codigo, :email, :nombre, :password, :role_id
end
