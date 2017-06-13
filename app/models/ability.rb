class Ability
  include CanCan::Ability

  def initialize(user)
    if user 
      can :manage, Cmsino::Content
      can :manage, Cmsino::Medium
    end
  end
end
