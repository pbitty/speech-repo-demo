class InterpretationsController < InheritedResources::Base
  belongs_to :speech, optional: true
  actions :all, except: :show
  load_and_authorize_resource

  def create
    create! { interpretations_path }
  end

  protected

  def collection
    current_account.interpretations
  end
end