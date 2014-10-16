class NewslettersController < ApplicationController

  def new
  	@newsletter = Newsletter.new
  end

  def create
  	@newsletter = Newsletter.new newsletter_params
  	if @newsletter.save
      flash[:notice] = 'Your request has been sent.'
  	else
  	  flash[:error] = 'Sorry, something went wrong.'
  	end
  	redirect_to root_path
  end

  private

    def newsletter_params
      params.require(:newsletter).permit(:name, :email)
    end
end