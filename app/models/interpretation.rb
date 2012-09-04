class Interpretation < ActiveRecord::Base
  stampable stamper_class_name: :account

  attr_accessible :speech_id,
                  :language_id,
                  :year_of_study_id

  belongs_to :speech
  belongs_to :language
  belongs_to :year_of_study
end
