ActiveAdmin.register Provider do
  menu :priority => 3
  index do                            
    column :name
    column :created_at
    column :email

    column "# Used Codes", :usedCodes
    column "# Unclaim Codes", :unclaimCodes

    column "# Uploaded Codes", :uploadedCodes
    column "# Removed Codes", :removedCodes
    
    column "" do |provider|
      links = ''.html_safe
      links += link_to I18n.t('active_admin.edit'), edit_resource_path(provider), :class => "member_link edit_link"
      links += link_to I18n.t('active_admin.delete'), resource_path(provider), :method => :delete, :confirm => I18n.t('active_admin.delete_confirmation'), :class => "member_link delete_link"
      links
    end                  
  end
  config.filters= false  
 
  form do |f|                         
    f.inputs "Vendor Details" do       
      f.input :name                
      f.input :email             
      f.input :provider, label: 'Log In With', :as => :select, :collection => { :Amazon => "amazon", :Google => "google_oauth2", :GitHub => "github", :Twitter => "twitter", :Facebook => "facebook"}
    end
    f.actions                                                      
end
end
