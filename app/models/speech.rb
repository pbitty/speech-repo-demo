class Speech < ActiveRecord::Base
  # TODO Improve Userstamp so stamper class name default can be set globally
  stampable stamper_class_name: :account

  attr_accessible :context,
                  :topic,
                  :language_id,
                  :setting_id,
                  :difficulty_id,
                  :speed_id

  belongs_to :language
  belongs_to :setting
  belongs_to :difficulty
  belongs_to :speed

  has_many :interpretations

  validates :context,
            :topic,
            :language,
            :setting,
            :difficulty,
            :speed,
            presence: true
end
