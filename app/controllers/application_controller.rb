class ApplicationController < ActionController::Base
  include ApplicationHelper
  include Userstamp

  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, flash: {error: exception.message}
  end

  def authorize_admin!
    unless current_account_is_sys_admin?
      # TODO Integrate 'unauthorized' redirect with rest of app
      # Perhaps redirect to 403-style page?
      redirect_to root_path, alert: "Access denied"
    end
  end

  def current_ability
    @current_ability ||= Ability.new(current_account)
  end

  def set_stamper
    Account.stamper = self.current_account
  end

  def reset_stamper
    Account.reset_stamper
  end
end