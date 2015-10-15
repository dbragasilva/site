Rails.application.routes.draw do
  
  root 'welcome#index'
  
  get 'enrollments/new'
  post 'enrollments/new' => 'enrollments#create', as: :enrollments

  resources :students
  resources :courses  
end
