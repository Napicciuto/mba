ActiveAdmin.register Worker do
  permit_params :email, :password, :password_confirmation, :name, :phone, :address, :city, :state, :zip, :school, :degree, :major, :industry, :experience, :experience_year, :skills

  filter :name
  filter :email
  filter :school
  filter :degree
  filter :major
  filter :industry
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :school
    column :degree
    column :major
    column :industry
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "MBA Details" do
      f.input :name
      f.input :phone
      f.input :address
      f.input :city
      f.input :state
      f.input :zip
      f.input :school
      f.input :degree
      f.input :major
      f.input :industry
      f.input :experience
      f.input :experience_year
      f.input :skills
      f.input :email
      if f.object.nil?
        f.input :password
        f.input :password_confirmation
      end
    end
    f.actions
  end

end
