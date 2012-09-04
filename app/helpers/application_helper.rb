module ApplicationHelper

  def nav_link(label, path)
    active_link_to label, path, wrap_tag: :li
  end

  def signin_signout_link
    account_signed_in? ? signout_link : signin_link
  end

  private

  def signin_link
    link_to "Sign in", new_account_session_path
  end

  def signout_link
    link_to "Sign out", destroy_account_session_path, method: :delete
  end

  def current_account_is_sys_admin?
    current_account && current_account.is_sys_admin?
  end
end