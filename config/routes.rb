Rails.application.routes.draw do
  get 'home/index'

  resources :medicine_intake_logs
  resources :doctor_notifications
  resources :in_patients
  resources :prescriptions
  resources :medicines
  resources :doctor_appointments
  resources :doctors do
    get 'login', :on => :collection
    post 'signin', :on => :collection
    get 'logout', :on => :collection
  end
  resources :users do
    get 'login', :on => :collection
    post 'signin', :on => :collection
    get 'logout', :on => :collection
  end

  root :to => 'home#index'
end
