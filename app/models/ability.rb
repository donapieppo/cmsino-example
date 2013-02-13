class Ability
  include CanCan::Ability

  def initialize(user)
    if user 
      can :manage, Cmsino::Content
    end
  end
end
