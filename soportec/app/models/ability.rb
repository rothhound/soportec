class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role_id == 1 #administrador
        can :manage, :all
        #can :assign_roles , User
    elsif user.role_id == 2 #secretaria
        can [:create,:destroy,:update], [Computer,Course,Laboratory,Professor,Schedule,Software]
        can :editar , User, :id => user.id
        can :read , [Computer,Course,Laboratory,Professor,Schedule,Software,User]

        cannot [:create, :destroy ,:update ,:assign_roles] , User
        cannot :manage, [Category,Eap,Group]
    elsif user.role_id == 3 #bolsista
        can :editar , User, :id => user.id
        can :read , [Course,Laboratory,Professor,Schedule,Software]
        
        cannot [:create,:destroy,:update], :all
        cannot [:read,:assign_roles] , User
    else
        cannot :manage, :all
    end
  end
end