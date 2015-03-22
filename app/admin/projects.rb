ActiveAdmin.register Project do
  permit_params :company_id, :name, :description

  menu parent: 'Project Tools', priority: 0

  filter :company
  filter :name
  filter :description
  filter :created_at
  filter :update_at

  index do
    selectable_column
    id_column
    column :company
    column :name
    column :description
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Degree Details" do
      f.input :company
      f.input :name
      f.input :description
    end
    f.actions
  end
end
