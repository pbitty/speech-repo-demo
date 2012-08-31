class Interpretation < ActiveRecord::Base
  attr_accessible :speech_id
  belongs_to :speech
end
