class ContactsController < ApplicationController

  def index
  	render :index
  end

  def create
  	@errors = true
  	if params[:honey] == "7"
  	  @contact = Contact.new(contacts)
  	  @errors = false if @contact.save
      email_people
  	end
  	render :index
  end

  private

  def email_people
    ContactMailer.contact_us(@contact).deliver
    ContactMailer.contact_them(@contact).deliver
  end

  def contacts
    params.require(:contacts).permit(:name, :email, :body)
  end

end
