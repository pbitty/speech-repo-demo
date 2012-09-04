ActiveAdmin.register Account do

  controller do
    def update
      hash = params[:account]
      hash.delete(:password) if hash[:password].blank?
      hash.delete(:password_confirmation) if hash[:password_confirmation].blank?
      super
    end
  end

  index do                            
    column :email
    column :role
    column :created_at
    column :updated_at
    default_actions
  end                                 

  filter :email                       

  form do |f|                         
    f.inputs "Account Details" do
      f.input :email                  
      f.input :password
      f.input :password_confirmation
      f.input :role, collection: Account::ROLES
    end                               
    f.buttons                         
  end                                 
end