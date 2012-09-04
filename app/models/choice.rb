class Choice < ActiveRecord::Base
  attr_accessible :description, :name, :type

  def to_s
    name
  end
end
