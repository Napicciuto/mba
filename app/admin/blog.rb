ActiveAdmin.register Blog do
  permit_params :title, :body, :created_at, :updated_at

  index do
    selectable_column
    id_column
    column :title
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Newletter" do
      f.input :title
      f.input :body
      f.input :file
    end
    f.actions
  end

end