class ContactsController < ApplicationController

  def new
    @contact = Contact.new
    if params[:involved]
      render :template => 'contacts/involved' and return
    end
  end


  def create
    @contact = Contact.create(params[:contact])
    if @contact.save
      if params[:involved]
        Notifier.deliver_involved(@contact)
        flash[:notice] = "Your message has been successfully sent to TEDxKrakow Team!"
        redirect_to '/involved' 
      else
        Notifier.deliver_contact(@contact)
        flash[:notice] = "Your message has been successfully sent to TEDxKrakow Team!"
        redirect_to '/contact'
      end
    else
      flash[:error] = "Your message has not been sent. Please check the errors."
      render :template => params[:involved] ? 'contacts/involved' : 'contacts/new'
    end
  end


end
