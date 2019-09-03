Rails.application.routes.draw do

    root to: "home#index"
    get "/doctor" => "doctor#index" 
    get "/doctor/edit/:id" => "doctor#edit"
    get "/doctor/destroy/:id" => "doctor#destroy"
 end
