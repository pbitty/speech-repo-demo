class Speech < ActiveRecord::Base
  attr_accessible :context, :topic
  has_many :interpretations
end
