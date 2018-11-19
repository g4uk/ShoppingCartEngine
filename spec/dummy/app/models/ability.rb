class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      can :manage, ShoppingCart::Order, user_id: user.id
      can :manage, ShoppingCart::CreditCard, user_id: user.id
      can :manage, ShoppingCart::Address, user_id: user.id
    end
  end
end