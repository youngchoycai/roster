Rails.application.routes.draw do
<<<<<<< HEAD
  resources :event2s
=======
>>>>>>> 0524d034499e8b311582c367de064f97505d0ffc
  resources :events
  get 'calendar/show'

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see
  # http://guides.rubyonrails.org/routing.html

  # These codes determine the url.
  # get: the url that displays the form
  # post or put: the url that the form's "submit" button leads to.

  # audition_controller
  get "/audition", to: "audition#index"
  post "/audition", to: "audition#create"

  get "/teamswitch", to: "team_switch_form#index"
  post "/teamswitch", to: "team_switch_form#create_team_switch_request", as: "team_switch_form"
end

CalendarExample::Application.routes.draw do
<<<<<<< HEAD
  resources :event2s
=======
>>>>>>> 0524d034499e8b311582c367de064f97505d0ffc
  resources :events
  resource :calendar, only: [:show], controller: :calendar
  root to: "calendar#show"
end
