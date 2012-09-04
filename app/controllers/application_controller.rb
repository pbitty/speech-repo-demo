class ApplicationController < ActionController::Base
  include ApplicationHelper

  protect_from_forgery

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
end