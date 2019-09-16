Rails.application.routes.draw do
   
     resources :departments
     resources :doctors
     resources :patients
     resources :appointments
   
    root to: "home#index"
    get "/doctors" => "doctors#index" 
    post "/doctors" => "doctors#create"
    get "/doctors/edit/:id" => "doctors#edit"
    patch "/doctors/:id" => "doctors#update"
    get "/doctors/destroy/:id" => "doctors#destroy"
    get "/doctors/new" => "doctors#new"
    get "/doctors/:id" => "doctors#show"
    
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


     get 'users/login'
     get 'users/signup'
     get 'users/index'
     post 'users/create'

 end
