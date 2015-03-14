Rails.application.routes.draw do
	
  devise_for :companies, :controllers => { :registrations => "companies/registrations" }
  devise_for :workers, :controllers => { :registrations => "workers/registrations" }

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'welcome#index'

  root 'pages#home'
  get 'news', to: 'pages#news', as: :news 
  get 'welcome', to: 'pages#welcome', as: :welcome 
  get 'policy/:policy_type', to: 'pages#policy', as: :policy

  resources :contacts, only: [:index, :create]
end