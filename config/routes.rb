Rails.application.routes.draw do
  namespace :api do
    get '/first_contact' => 'contacts#first'
    get '/all_contacts/:id' => 'contacts#all_of_the_contacts_for_me'
    post '/all_contacts/' => 'contacts#create'
    patch '/all_contacts/:id' => 'contacts#update'
    delete '/all_contacts/:id' => 'contacts#destroy'
  end
end
