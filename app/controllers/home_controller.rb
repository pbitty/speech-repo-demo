class HomeController < ApplicationController

  def index
    redirect_to speeches_path
  end

end