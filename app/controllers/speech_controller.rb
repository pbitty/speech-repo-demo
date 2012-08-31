class SpeechController < ApplicationController
  # TODO This is a stub controller - fill it out
  def index
    @speeches = 10.times.collect { Speech.new(topic: Faker::Lorem.words(1)[0], context: Faker::Lorem.paragraph)}
  end
end