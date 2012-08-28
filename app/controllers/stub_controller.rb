class StubController < ApplicationController

  def method_missing(symbol, *args)
    @title = symbol.to_s
    render 'stub'
  end

end