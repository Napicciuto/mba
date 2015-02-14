ActiveAdmin.register Contact do
  permit_params :name, :email, :phone, :city, :state, :zip, :subject, :body

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :phone
    column :city
    column :state
    column :subject
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Degree Details" do
      f.input :name
      f.input :email
      f.input :phone
      f.input :city
      f.input :state
      f.input :subject
      f.input :body
    end
    f.actions
  end
end
