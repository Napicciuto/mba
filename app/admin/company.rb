ActiveAdmin.register Company do
  permit_params :email, :password, :password_confirmation, :name, :title, :phone, :address, :city, :state, :zip, :company_name, :company_industry, :company_description, :years_in_business

  filter :name
  filter :company_name
  filter :company_industry
  filter :years_in_business
  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :phone
    column :company_name
    column :company_industry
    column :years_in_business
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end


  form do |f|
    f.inputs "MBA Details" do
      f.input :name
      f.input :title
      f.input :phone
      f.input :address
      f.input :city
      f.input :state
      f.input :zip
      f.input :company_name
      f.input :company_industry
      f.input :company_description
      f.input :years_in_business
      f.input :email
      if f.object.nil?
        f.input :password
        f.input :password_confirmation
      end
    end
    f.actions
  end

end
