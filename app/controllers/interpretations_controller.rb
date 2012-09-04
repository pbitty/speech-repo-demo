class InterpretationsController < InheritedResources::Base
  belongs_to :speech, optional: true
  actions :all, except: :show
  load_and_authorize_resource
  # TODO Enable scoping for current user's interpretations
end