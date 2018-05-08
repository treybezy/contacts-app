class Api::ContactsController < ApplicationController
  def first
    @contact = Contact.first
    render 'one_contact.json.jbuilder'
  end

  def all_of_the_contacts_for_me
    @contacts = Contact.all
    render 'belonging_to_us.json.jbuilder'
  end
end
