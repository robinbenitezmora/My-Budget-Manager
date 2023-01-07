class Ability
  include CanCan::Ability

  def initialize(user)
    can(:manage, Cluster, user:)
    can :manage, Start, user:
  end
end
