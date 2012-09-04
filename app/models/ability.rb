class Ability
  include CanCan::Ability

  def initialize(account)
    if account.nil? || account.role.nil?
      anonymous
    else
      send(account.role)
      owner_of(Interpretation, account)
    end
  end

  private

  #
  # Role hierarchy: each method represents a role
  # (and calls 'lower' methods in the hierarchy)
  #
  def sys_admin
    speech_admin
    can :manage, :all
  end

  def speech_admin
    speech_creator
    can :manage, Speech
  end

  def speech_creator
    interpreter
    can :create, Speech
  end

  def interpreter
    anonymous
    can :create, Interpretation
  end

  def anonymous
    can :read, Speech
  end


  #
  # Ownership access: an account can manage
  # a model instance if it is its creator
  #
  def owner_of(class_name, account)
    can :manage, class_name, creator_id: account.id
  end
end