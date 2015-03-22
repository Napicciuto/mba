ActiveAdmin.register Assignment do
  permit_params :worker_id, :project_id

  menu parent: 'Project Tools'

  filter :worker
  filter :project
  filter :created_at
  filter :update_at

  index do
    selectable_column
    id_column
    column :worker
    column :project
    column :created_at
    column :updated_at
    actions
  end
end