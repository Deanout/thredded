Rails.application.routes.draw do
  mount Thredded::Engine => '/forum'

    # Set root to be the Thredded forums index page at /forum.
    root to: 'thredded/messageboards#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # Let /users/:id route to the profiles controller show action.
  # This is optional, but it allows you to have a link to a user's profile page.
  get '/users/:id' => 'profiles#show'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
