class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role_id == 1 #administrador
        can :manage, :all
        cannot :assign_roles2 , User
    elsif user.role_id == 2 #secretaria
        can [:create,:destroy,:update], [Computer,Course,Laboratory,Professor,Schedule,Software]
        can [:update,:editar],User
        can :read , [Computer,Course,Laboratory,Professor,Schedule,Software,User]
        can :asignacion, Laboratory
        can :dynamic, Schedule
        can :assign_roles2, User
        can :create, User
        can :destroy, User

        cannot :editar , User, :role_id => 1 
        cannot :update , User, :role_id => 1 
        cannot :destroy , User, :role_id => 1 
        #cannot [:create, :destroy] , User
        cannot :manage, [Category,Eap,Group]

    elsif user.role_id == 3 #bolsista
        can :editar , User, :id => user.id
        can :update , User, :id => user.id
        can :read, [Course,Laboratory,Professor,Schedule,Software]
        
        cannot [:create,:destroy,:update], [Category,Computer,Course,Eap,Group,Laboratory,Professor,Schedule,Software]
        cannot :asignar, Laboratory
        #cannot [:read,,:assign_roles] , User
    else
        cannot :manage, :all
    end
  end
end