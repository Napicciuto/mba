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
  match 'how_it_works', to: 'pages#how_it_works', via: [:get], as: :how_it_works
  match 'about_us', to: 'pages#about_us', via: [:get], as: :about_us
  match 'contact', to: 'pages#contact', via: [:get], as: :contact
  match 'news', to: 'pages#news', via: [:get], as: :news  
end
