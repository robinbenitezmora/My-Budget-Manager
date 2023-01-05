class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Cluster, user: user
    can :manage, Start, user: user
  end
end
