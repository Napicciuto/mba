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
  get 'how_it_works', to: 'pages#how_it_works', as: :how_it_works
  get 'about_us', to: 'pages#about_us', as: :about_us
  get 'contact', to: 'pages#contact', as: :contact
  get 'news', to: 'pages#news', as: :news 
  get 'terms', to: 'pages#terms', as: :terms 
end
