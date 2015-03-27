ActiveAdmin.register Worker do
  permit_params :email, :password, :password_confirmation, :name, :phone, :address, :city, :state, :zip, :school, :degree, :major, :industry, :experience, :experience_year, :skills

  menu parent: 'Customers'

  filter :name
  filter :email
  filter :school
  filter :degree
  filter :major
  filter :industry
  filter :current_sign_in_at
  filter :sign_in_count

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :school
    column :degree
    column :major
    column :current_sign_in_at
    column :sign_in_count
    actions
  end

  show do
    attributes_table do
      row :name
      row :phone
      row :address
      row :city
      row :state
      row :zip
      row :school
      row :major
      row :degree
      row :industries do |industry|
        industry.industries.map(&:industry).join(', ')
      end
      row :experience
      row :experience_year
      row :skills
      row :email
    end
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
      f.input :degree, :as => :select, :collection => Degree.active.collect {|product| [product.degree, product.id] }
      f.input :major
      f.input :industries, as: :select, collection: Industry.active.collect {|product| [product.industry, product.id] }
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
