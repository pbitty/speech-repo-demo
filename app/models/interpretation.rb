class Interpretation < ActiveRecord::Base
  stampable stamper_class_name: :account

  attr_accessible :speech_id
  belongs_to :speech
end
