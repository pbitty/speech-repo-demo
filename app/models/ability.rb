class Ability
  include CanCan::Ability

  def initialize(account)
    if account.nil? || account.role.nil?
      anonymous
    else
      send(account.role)
      # TODO Implement ownership editing ability
    end
  end

  private

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
end
