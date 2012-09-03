ActiveAdmin.register Account do
  index do                            
    column :email                     
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
    end                               
    f.buttons                         
  end                                 
end