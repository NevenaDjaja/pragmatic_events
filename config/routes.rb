Rails.application.routes.draw do
	root "events#index"
  # get "events" => "events#index"
  # get "events/new" => "events#new"
  # get "events/:id" => "events#show", :as => "event"
  # patch "events/:id" => "events#update"
  # get "events/:id/edit" => "events#edit", :as => "edit_event"
  resources :events
end
