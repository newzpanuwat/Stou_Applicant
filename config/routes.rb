Rails.application.routes.draw do
  get 'qualifications/index'

  resources :applicants
    resources :qualifications 
  root 'applicants#index'

end
