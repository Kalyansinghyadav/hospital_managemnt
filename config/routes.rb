Rails.application.routes.draw do

    root to: "home#index"
    get "/doctors" => "doctors#index" 
    get "/doctors/edit/:id" => "doctors#edit"
    get "/doctors/destroy/:id" => "doctors#destroy"
    get "/doctors/new" => "doctors#new"
 end