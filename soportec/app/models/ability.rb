class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role_id == 1 #administrador
        can :manage, :all
        cannot :assign_roles2 , User
    elsif user.role_id == 2 #secretaria
        #can [:create,:destroy,:update,:destroy], [Computer,Course,Laboratory,Professor,Schedule,Software]
        can :manage, [Computer,Course,Laboratory,Professor,Schedule,Software]
        can [:update,:editar],User
        can :read , [Computer,Course,Laboratory,Professor,Schedule,Software,User]
        can :asignacion, Laboratory
        can :dynamic, Schedule
        can :dynamic, State
        can :assign_roles2, User
        can :create, User
        can :destroy, User
        can :manage, State

        cannot :editar , User, :role_id => 1 
        cannot :update , User, :role_id => 1 
        cannot :destroy , User, :role_id => 1 
        cannot :update , State
        cannot :manage, [Category,Eap,Group]

    elsif user.role_id == 3 #bolsista
        can :editar , User, :id => user.id
        can :update , User, :id => user.id
        can :read, [Course,Laboratory,Professor,Schedule,Software,State]
        can :dynamic,State
        can :create, State

        cannot [:update, :destroy, :leer], State
        cannot [:create,:destroy,:update], [Category,Computer,Course,Eap,Group,Laboratory,Professor,Schedule,Software]
        cannot :asignar, Laboratory
    else
        cannot :manage, :all
    end
  end
end