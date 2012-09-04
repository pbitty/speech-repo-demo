class Speech < ActiveRecord::Base
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
