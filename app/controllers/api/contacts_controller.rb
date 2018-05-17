class Api::ContactsController < ApplicationController
  def first
    @contact = Contact.first
    render 'one_contact.json.jbuilder'
  end

  def all_of_the_contacts_for_me
    @contacts = Contact.all
    render 'belonging_to_us.json.jbuilder'
  end

  def show
    contacts_id = params[:id]
    @contact = Contact.find(contacts_id)
    render 'one_contact.json.jbuilder'
  end

  def create
     @contact = Contact.new(
                         first_name: params[:first_name],
                         middle_name: params[:middle_name],
                         last_name: params[:last_name],
                         email: params[:email],
                         phone_number: params[:phone_number],
                         bio: params[:bio]
                         )
    @contact.save
    render 'belonging_to_us.json.jbuilder'
  end

  def update
    contact_id = params[:id]
    @contact = contact.find[:id]

    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.middle_name = params[:middle_name] || @contact.middle_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || contact.phone_number
    @contacts.bio = params[:bio] || contact.bio
   

    @contact.save
    render 'belonging_to_us.json.jbuilder'
  end