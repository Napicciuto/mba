class TimesheetsController < ApplicationController
  before_filter :timesheet_project, only: [:index, :create]
  before_filter :find_assignment, only: :create

  def index
  end

  def create
  	@timesheet = Timesheet.new(timesheets)
  	@timesheet.save
  	redirect_to :back
  end

  private

  def timesheet_project
  	@project = Project.find(params[:project_id])
  end

  def find_assignment
  	params[:timesheets][:assignment_id] = @project.assignments.find_by_worker_id(@current_user.id).id
  end

  def timesheets
    params.require(:timesheets).permit(:time, :description, :assignment_id)
  end
end