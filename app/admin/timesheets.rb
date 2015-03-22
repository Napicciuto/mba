ActiveAdmin.register Timesheet do
  permit_params :description, :time, :assignment_id
  
  menu parent: 'Project Tools'

  index do
    selectable_column
    id_column
    column :assignment
    column :description
    column :time
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Newletter" do
      f.input :assignment_id
      f.input :description
      f.input :time
    end
    f.actions
  end

end