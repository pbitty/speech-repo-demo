class SpeechesController < InheritedResources::Base
  respond_to :html, :json, :xml
  actions :all, except: :show
  load_and_authorize_resource
end