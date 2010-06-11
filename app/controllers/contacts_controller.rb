class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end


  def create
    @contact = Contact.create(params[:contact])
    if @contact.save
      Notifier.deliver_contact(@contact)
      flash[:notice] = "Your message has been successfully sent to TEDxKrakow Team!"
      redirect_to :new
    else
      flash[:error] = "Your message has not been sent. Please check the errors."
      render :new
    end
  end


end
