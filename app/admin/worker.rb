ActiveAdmin.register Worker do
  # permit_params :email, :password, :password_confirmation

  filter :name
  filter :school
  filter :degree
  filter :major
  filter :experience
  filter :experience_year
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
    column :school
    column :degree
    column :major
    column :industry
    column :experience
    column :experience_year
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
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
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
