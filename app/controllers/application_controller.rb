class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :current_user

  def after_sign_in_path_for(resource)
    dashboard_path
  end

  def current_user
  	if either_user_signed_in?
  	  @current_user = worker_signed_in? ? current_worker : current_company
  	end
  end

  private

  def either_user_signed_in?
    worker_signed_in? || company_signed_in?
  end
end
