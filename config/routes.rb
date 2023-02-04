Rails.application.routes.draw do
  resources :employee_project_details
  resources :project_details
  resources :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
