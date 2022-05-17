Rails.application.routes.draw do
 

  resources :courses do
    resources :students
    get "long_courses", on: :collection 
  end
  root 'courses#index'
  


  
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


