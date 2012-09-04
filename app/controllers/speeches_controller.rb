class SpeechesController < InheritedResources::Base
  actions :all, except: :show
  load_and_authorize_resource
end