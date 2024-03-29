class Ability
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user

    if user.role? :admin
      can :manage, :all
    elsif user.role? :student
      can :manage, Post
    elsif user.role? :teacher
      can :manage, Post
    else
      can :read, :all
    end
  end
end