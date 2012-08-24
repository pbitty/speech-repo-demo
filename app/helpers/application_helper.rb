module ApplicationHelper

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
end
