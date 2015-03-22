class DashboardController < ApplicationController
  before_filter :redirect_admin

  def index
  	if @current_user.class.to_s == 'Worker'
  	  @projects = @current_user.assignments.map(&:project)
  	else
  	  @projects = @current_user.projects
  	end
  end

  private

  def redirect_admin
  	if current_admin_user.present?
      redirect_to admin_root_path
 	end
  end
end