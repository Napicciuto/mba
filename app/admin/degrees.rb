ActiveAdmin.register Degree do
  permit_params :degree, :active

  menu parent: 'Criteria'

  filter :degree
  filter :active
  filter :created_at
  filter :update_at

  scope :all
  scope :active, :default => true
  scope :inactive

  index do
    selectable_column
    id_column
    column :degree
    column :active
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Degree Details" do
      f.input :degree
      f.input :active
    end
    f.actions
  end
end
