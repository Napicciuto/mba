ActiveAdmin.register Industry do
  permit_params :industry, :active

  filter :industry
  filter :active
  filter :created_at
  filter :update_at

  scope :all
  scope :active, :default => true
  scope :inactive

  index do
    selectable_column
    id_column
    column :industry
    column :active
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Industry Details" do
      f.input :industry
      f.input :active
    end
    f.actions
  end
end
