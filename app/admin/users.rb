ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :first_name, :last_name, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :confirmation_token, :confirmed_at, :confirmation_sent_at, :company_name, :vat_percentage, :address, :country, :language, :country_code, :area_code, :phone, :fax, :summary, :unit_system, :payment_way, :membership_level,:status
  #
  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :confirmation_token, :confirmed_at, :confirmation_sent_at, :company_name, :vat_percentage, :address, :country, :language, :country_code, :area_code, :phone, :fax, :summary, :unit_system, :payment_way, :membership_level]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
