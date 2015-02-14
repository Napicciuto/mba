class ContactsController < ApplicationController

  def index
  	render :index
  end

  def create
  	@errors = true
  	if honey_pot?
  	  @contact = Contact.new(contacts)
  	  @errors = false if @contact.save
      email_people
  	end
  	render :index
  end

  private

  def honey_pot?
    params[:honey] == "7"
  end

  def email_people
    ContactMailer.contact_us(@contact).deliver
    ContactMailer.contact_them(@contact).deliver
  end

  def contacts
    params.require(:contacts).permit(:name, :email, :phone, :city, :state, :zip, :subject, :body)
  end

end
