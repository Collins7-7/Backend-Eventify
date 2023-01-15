# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
     elsif user.client?
      can :read, Category
      can :read, Event
      can :read, Booking, user_id: user.id
      can :create, Booking, user_id: user.id
     end
  end
end
