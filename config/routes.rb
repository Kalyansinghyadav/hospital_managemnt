Rails.application.routes.draw do
   
     resources :roles
     resources :doctors
     resources :patients
     resources :appointments
   
    root to: "home#index"
    get "/doctors" => "doctors#index" 
    post "/doctors" => "doctors#create"
    get "/doctors/edit/:id" => "doctors#edit"
    get "/doctors/destroy/:id" => "doctors#destroy"
    get "/doctors/new" => "doctors#new"
    get "/doctors/:id" => "doctors#show"
    
    get "/roles" => "roles#index"
    post "/roles" => "roles#create"
    get "/roles/new" => "roles#new"
    get "/roles/edit/:id" => "roles#edit"
    get "/roles/destroy/:id" => "roles#destroy"

    get "/patients" => "patients#index"
    get "/patients/new" => "patients#new"
    post "/patients" => "patients#create"
    get "/patients/destroy/:id" => "patients#destroy"
    get "/patients/:id" => "patients#show"
    get "/patients/edit/:id" => "patients#edit"

    get "/appointments/new" => "appointments#new"
    get "/appointments" => "appointments#index"
     get "/appointments" => "appointments#create"

 end
