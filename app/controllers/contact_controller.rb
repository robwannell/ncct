class ContactController < ApplicationController
  def new
      @title ="Contact Us"
      @contact = Contact.new
      
 
    end

    def send_mail
      @contact = Contact.new(params[:contact])
      name = @contact.name
      email = @contact.email
      body = @contact.body
      if @contact.valid?
        ContactMailer.contact_email(name, email, body).deliver
        redirect_to root_path, notice: 'Thank you - your message has been sent!'
      else
        render :new
      end
    end
    
end