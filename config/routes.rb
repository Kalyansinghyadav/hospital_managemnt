Rails.application.routes.draw do
   
     resources :departments, :admit_patients
     resources :doctors
     resources :patients
     resources :appointments, :users, :session

   
    root to: "users#new"
    get "/doctors" => "doctors#index" 
    post "/doctors" => "doctors#create"
    get "/doctors/edit/:id" => "doctors#edit"
    patch "/doctors/:id" => "doctors#update"
    get "/doctors/destroy/:id" => "doctors#destroy"
    get "/doctors/new" => "doctors#new"
    get "/doctors/:id" => "doctors#show"
    patch "/doctors/disable/:id" => "doctors#disable"
    
    get "/departments" => "departments#index"
    post "/departments" => "departments#create"
    get "/departments/new" => "departments#new"
    get "/departments/edit/:id" => "departments#edit"
    get "/departments/destroy/:id" => "departments#destroy"

    get "/patients" => "patients#index"
    get "/patients/new" => "patients#new"
    post "/patients" => "patients#create"
    get "/patients/destroy/:id" => "patients#destroy"
    get "/patients/:id" => "patients#show"
    get "/patients/edit/:id" => "patients#edit"

    get "/appointments/new" => "appointments#new"
    get "/appointments" => "appointments#index"
    post "/appointments" => "appointments#create"
    get "/appointments/edit/:id" => "appointments#edit"
    get   "/appointments/destroy/:id" => "appointments#destroy"

    get '/login' => 'login#index'
    post '/login' => 'login#login'
    get '/signup' => 'signup#index'
    post '/signup' => 'signup#create'

    patch "/admit_patients/:id/edit" => "admit_patients#edit"

    get "/users/new" => "users#new"
    post "/users" => "users#create"
    
    post "/users/login" => "users#login"
    get "/session/new" => "session#new"
    post "/session" => "session#create"

 end
