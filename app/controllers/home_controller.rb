class HomeController < ApplicationController

  def index
    flash.keep
    redirect_to speeches_path
  end

end